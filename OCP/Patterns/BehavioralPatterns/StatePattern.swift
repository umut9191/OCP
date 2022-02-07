//
//  StatePattern.swift
//  OCP
//
//  Created by Mac on 7.02.2022.
//

import Foundation
//State Patten is uses for
protocol IThreadState {
    func Run(context:ThreadContext)
    func Stop(context:ThreadContext)
    func Wait(context:ThreadContext)
}
class ThreadContext {
    private var state:IThreadState
    var State:IThreadState
    {
        get{
           return state
        }
        set(val){
        state = val
        }
    }
    init() {
        print("Thread created and not running curently")
        state = StoppedState()
    }
    func Start(){
        state.Run(context: self)
    }
    func Abord(){
        state.Stop(context: self)
    }
    func Sleep() {
        state.Wait(context: self)
    }
}
class RunningState: IThreadState {
    func Run(context: ThreadContext) {
        print("Thread is already running")
    }
    func Stop(context: ThreadContext) {
        context.State = StoppedState()
        print("Thread is stopped")
    }
    func Wait(context: ThreadContext) {
        context.State = WaitingState()
        print("Thread is waiting")
    }
}
class StoppedState: IThreadState {
    func Run(context: ThreadContext) {
        context.State = RunningState()
        print("Thread is started")
    }
    func Stop(context: ThreadContext) {
    print("Thread is already stopped")
    }
    func Wait(context: ThreadContext) {
        print("Stopped thread cant waiting")
    }
}
class WaitingState: IThreadState {
    func Run(context: ThreadContext) {
        context.State = RunningState()
        print("Waiting State is trigerred to run")
    }
    func Stop(context: ThreadContext) {
        context.State = StoppedState()
        print("Waiting thread complately stopped")
    }
    func Wait(context: ThreadContext) {
        print("thread already waiting")
    }
}
