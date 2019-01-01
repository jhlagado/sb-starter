// @ts-ignore: Could not find a declaration file for module 'z80js'
import Z80 from 'z80js';

declare class Z80 implements IZ80 {

    state:string ;
    tStates: any;
    nmiRequested: any;
    intRequested: boolean;
    deferInt: any;
    I: number;
    IFF1: boolean;
    IFF2: boolean;
    IM: number;
    execIntVector: boolean;
    halted: any;
    PC: number;
    intVector: number;

    constructor(mem: any, port: any, debug: any)
    read16(vectorAddr: number): number;
    doExecute(): any;
    doPush(PC: number): any;
    execute(): any;
}

interface IZ80 {

}

class Z80cpu extends Z80 {

    constructor(mem:any,port:any, debug:boolean){
        super(mem,port, debug);
    }

    execute() {
        const states = this.tStates;
        this.state = "running";
        if (this.nmiRequested) {
            this.doNmi()
        } else if (this.intRequested && !this.deferInt && this.IFF1) {
            this.doInt()
        } else {
            this.deferInt = false
            super.execute()
        }
        this.state = "stopped"
        return this.tStates - states
    }

    doNmi() {
        this.unhalt()
        this.IFF2 = this.IFF1
        this.IFF1 = false
        this.doPush(this.PC)
        this.PC = 0x0066
        this.nmiRequested = false
        this.tStates += 5
    }

    doInt() {
        this.unhalt();
        this.IFF1 = false;
        this.IFF2 = false;
        this.intRequested = false;
        switch (this.IM) {
            case 0:
                this.execIntVector = true;
                this.doExecute();
                this.execIntVector = false;
                break;
            case 1:
                this.doPush(this.PC)
                this.PC = 0x0038
                this.tStates += 7;
                break;
            case 2:
                this.doPush(this.PC);
                const vectorAddr = (this.I << 8) | this.intVector;
                this.PC = this.read16(vectorAddr);
                this.tStates += 7;
        }
    }

    unhalt() {
        if (this.halted) {
            this.halted = false;
            this.PC++;
        }
    }

    interrupt(nmi:boolean, value:number) {
        if (nmi) {
            this.nmiRequested = true;
        }
        else {
            this.intRequested = true;
            this.intVector = value;
        }
    }

    run_instruction() {
        return this.execute();
    }
}

const cpu = new Z80cpu(
    {
        read8(addr:number):number {
            addr = addr & 0xFFFF
            return memory[addr]
        },
        write8(addr:number, val:number) {
            addr = addr & 0xFFFF
            memory[addr] = val
        }
    },{
        read(addr:number):number {
            return inPorts[addr];
        },
        write(addr:number, value:number) {
            outPorts[addr] = value;
            updateDisplay();
            postOutPorts(addr, value);
        }
    },
    true
);
