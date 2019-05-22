// MARK: - Mocks generated from file: CleanRepository/list/ProfileListPresenter.swift at 2019-05-22 11:59:36 +0000

//
//  ProfileListPresenter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Cuckoo
@testable import CleanRepository

import Foundation
import ReSwift
import RxSwift


 class MockIProfileListPresenter: IProfileListPresenter, Cuckoo.ProtocolMock {
    
     typealias MocksType = IProfileListPresenter
    
     typealias Stubbing = __StubbingProxy_IProfileListPresenter
     typealias Verification = __VerificationProxy_IProfileListPresenter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: IProfileListPresenter?

     func enableDefaultImplementation(_ stub: IProfileListPresenter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func viewDidLoad()  {
        
    return cuckoo_manager.call("viewDidLoad()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewDidLoad())
        
    }
    
    
    
     func viewWillAppear()  {
        
    return cuckoo_manager.call("viewWillAppear()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewWillAppear())
        
    }
    
    
    
     func viewWillDisappear()  {
        
    return cuckoo_manager.call("viewWillDisappear()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewWillDisappear())
        
    }
    
    
    
     func numberOfProfiles() -> Int {
        
    return cuckoo_manager.call("numberOfProfiles() -> Int",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.numberOfProfiles())
        
    }
    
    
    
     func profileAt(pos: Int) -> User {
        
    return cuckoo_manager.call("profileAt(pos: Int) -> User",
            parameters: (pos),
            escapingParameters: (pos),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.profileAt(pos: pos))
        
    }
    
    
    
     func profileClickedAt(pos: Int)  {
        
    return cuckoo_manager.call("profileClickedAt(pos: Int)",
            parameters: (pos),
            escapingParameters: (pos),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.profileClickedAt(pos: pos))
        
    }
    
    
    
     func myProfileClicked()  {
        
    return cuckoo_manager.call("myProfileClicked()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.myProfileClicked())
        
    }
    

	 struct __StubbingProxy_IProfileListPresenter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfileListPresenter.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func viewWillAppear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfileListPresenter.self, method: "viewWillAppear()", parameterMatchers: matchers))
	    }
	    
	    func viewWillDisappear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfileListPresenter.self, method: "viewWillDisappear()", parameterMatchers: matchers))
	    }
	    
	    func numberOfProfiles() -> Cuckoo.ProtocolStubFunction<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfileListPresenter.self, method: "numberOfProfiles() -> Int", parameterMatchers: matchers))
	    }
	    
	    func profileAt<M1: Cuckoo.Matchable>(pos: M1) -> Cuckoo.ProtocolStubFunction<(Int), User> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: pos) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfileListPresenter.self, method: "profileAt(pos: Int) -> User", parameterMatchers: matchers))
	    }
	    
	    func profileClickedAt<M1: Cuckoo.Matchable>(pos: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: pos) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfileListPresenter.self, method: "profileClickedAt(pos: Int)", parameterMatchers: matchers))
	    }
	    
	    func myProfileClicked() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfileListPresenter.self, method: "myProfileClicked()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_IProfileListPresenter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewWillAppear() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewWillAppear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewWillDisappear() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewWillDisappear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func numberOfProfiles() -> Cuckoo.__DoNotUse<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("numberOfProfiles() -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func profileAt<M1: Cuckoo.Matchable>(pos: M1) -> Cuckoo.__DoNotUse<(Int), User> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: pos) { $0 }]
	        return cuckoo_manager.verify("profileAt(pos: Int) -> User", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func profileClickedAt<M1: Cuckoo.Matchable>(pos: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: pos) { $0 }]
	        return cuckoo_manager.verify("profileClickedAt(pos: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func myProfileClicked() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("myProfileClicked()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class IProfileListPresenterStub: IProfileListPresenter {
    

    

    
     func viewDidLoad()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func viewWillAppear()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func viewWillDisappear()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func numberOfProfiles() -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     func profileAt(pos: Int) -> User  {
        return DefaultValueRegistry.defaultValue(for: (User).self)
    }
    
     func profileClickedAt(pos: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func myProfileClicked()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockIProfileListView: IProfileListView, Cuckoo.ProtocolMock {
    
     typealias MocksType = IProfileListView
    
     typealias Stubbing = __StubbingProxy_IProfileListView
     typealias Verification = __VerificationProxy_IProfileListView

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: IProfileListView?

     func enableDefaultImplementation(_ stub: IProfileListView) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setupViews()  {
        
    return cuckoo_manager.call("setupViews()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setupViews())
        
    }
    
    
    
     func updateList()  {
        
    return cuckoo_manager.call("updateList()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.updateList())
        
    }
    

	 struct __StubbingProxy_IProfileListView: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setupViews() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfileListView.self, method: "setupViews()", parameterMatchers: matchers))
	    }
	    
	    func updateList() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfileListView.self, method: "updateList()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_IProfileListView: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setupViews() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setupViews()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func updateList() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("updateList()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class IProfileListViewStub: IProfileListView {
    

    

    
     func setupViews()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func updateList()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: CleanRepository/model/Request.swift at 2019-05-22 11:59:36 +0000

//
//  IRequest.swift
//  CleanRepository
//
//  Created by Ufos on 20/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Cuckoo
@testable import CleanRepository

import Foundation


 class MockIRequest: IRequest, Cuckoo.ProtocolMock {
    
     typealias MocksType = IRequest
    
     typealias Stubbing = __StubbingProxy_IRequest
     typealias Verification = __VerificationProxy_IRequest

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: IRequest?

     func enableDefaultImplementation(_ stub: IRequest) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var url: String {
        get {
            return cuckoo_manager.getter("url",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.url)
        }
        
        set {
            cuckoo_manager.setter("url",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.url = newValue)
        }
        
    }
    

    

    

	 struct __StubbingProxy_IRequest: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var url: Cuckoo.ProtocolToBeStubbedProperty<MockIRequest, String> {
	        return .init(manager: cuckoo_manager, name: "url")
	    }
	    
	    
	}

	 struct __VerificationProxy_IRequest: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var url: Cuckoo.VerifyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "url", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class IRequestStub: IRequest {
    
    
     var url: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
        set { }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: CleanRepository/model/Service.swift at 2019-05-22 11:59:36 +0000

//
//  IService.swift
//  CleanRepository
//
//  Created by Ufos on 20/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Cuckoo
@testable import CleanRepository

import Foundation


 class MockIService: IService, Cuckoo.ProtocolMock {
    
     typealias MocksType = IService
    
     typealias Stubbing = __StubbingProxy_IService
     typealias Verification = __VerificationProxy_IService

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: IService?

     func enableDefaultImplementation(_ stub: IService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func request(request: IRequest, completion: @escaping (_ response: Any?, _ error: Any?)->())  {
        
    return cuckoo_manager.call("request(request: IRequest, completion: @escaping (_ response: Any?, _ error: Any?)->())",
            parameters: (request, completion),
            escapingParameters: (request, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.request(request: request, completion: completion))
        
    }
    

	 struct __StubbingProxy_IService: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func request<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(request: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(IRequest, (_ response: Any?, _ error: Any?)->())> where M1.MatchedType == IRequest, M2.MatchedType == (_ response: Any?, _ error: Any?)->() {
	        let matchers: [Cuckoo.ParameterMatcher<(IRequest, (_ response: Any?, _ error: Any?)->())>] = [wrap(matchable: request) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIService.self, method: "request(request: IRequest, completion: @escaping (_ response: Any?, _ error: Any?)->())", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_IService: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func request<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(request: M1, completion: M2) -> Cuckoo.__DoNotUse<(IRequest, (_ response: Any?, _ error: Any?)->()), Void> where M1.MatchedType == IRequest, M2.MatchedType == (_ response: Any?, _ error: Any?)->() {
	        let matchers: [Cuckoo.ParameterMatcher<(IRequest, (_ response: Any?, _ error: Any?)->())>] = [wrap(matchable: request) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("request(request: IRequest, completion: @escaping (_ response: Any?, _ error: Any?)->())", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class IServiceStub: IService {
    

    

    
     func request(request: IRequest, completion: @escaping (_ response: Any?, _ error: Any?)->())   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: CleanRepository/model/Store.swift at 2019-05-22 11:59:36 +0000

//
//  Store.swift
//  CleanRepository
//
//  Created by Ufos on 22/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Cuckoo
@testable import CleanRepository

import Foundation
import ReSwift


 class MockIDispatchStore: IDispatchStore, Cuckoo.ProtocolMock {
    
     typealias MocksType = IDispatchStore
    
     typealias Stubbing = __StubbingProxy_IDispatchStore
     typealias Verification = __VerificationProxy_IDispatchStore

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: IDispatchStore?

     func enableDefaultImplementation(_ stub: IDispatchStore) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func dispatch(_ action: Action)  {
        
    return cuckoo_manager.call("dispatch(_: Action)",
            parameters: (action),
            escapingParameters: (action),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.dispatch(action))
        
    }
    

	 struct __StubbingProxy_IDispatchStore: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func dispatch<M1: Cuckoo.Matchable>(_ action: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Action)> where M1.MatchedType == Action {
	        let matchers: [Cuckoo.ParameterMatcher<(Action)>] = [wrap(matchable: action) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIDispatchStore.self, method: "dispatch(_: Action)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_IDispatchStore: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func dispatch<M1: Cuckoo.Matchable>(_ action: M1) -> Cuckoo.__DoNotUse<(Action), Void> where M1.MatchedType == Action {
	        let matchers: [Cuckoo.ParameterMatcher<(Action)>] = [wrap(matchable: action) { $0 }]
	        return cuckoo_manager.verify("dispatch(_: Action)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class IDispatchStoreStub: IDispatchStore {
    

    

    
     func dispatch(_ action: Action)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: CleanRepository/model/User/UserActions.swift at 2019-05-22 11:59:36 +0000

//
//  UserActions.swift
//  CleanRepository
//
//  Created by Ufos on 21/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Cuckoo
@testable import CleanRepository

import Foundation
import ReSwift


 class MockIUserActions: IUserActions, Cuckoo.ProtocolMock {
    
     typealias MocksType = IUserActions
    
     typealias Stubbing = __StubbingProxy_IUserActions
     typealias Verification = __VerificationProxy_IUserActions

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: IUserActions?

     func enableDefaultImplementation(_ stub: IUserActions) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func changeLike(userId: Int, change: Int)  {
        
    return cuckoo_manager.call("changeLike(userId: Int, change: Int)",
            parameters: (userId, change),
            escapingParameters: (userId, change),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.changeLike(userId: userId, change: change))
        
    }
    
    
    
     func fetchAllUsers()  {
        
    return cuckoo_manager.call("fetchAllUsers()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchAllUsers())
        
    }
    

	 struct __StubbingProxy_IUserActions: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func changeLike<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(userId: M1, change: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Int, Int)> where M1.MatchedType == Int, M2.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: userId) { $0.0 }, wrap(matchable: change) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIUserActions.self, method: "changeLike(userId: Int, change: Int)", parameterMatchers: matchers))
	    }
	    
	    func fetchAllUsers() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIUserActions.self, method: "fetchAllUsers()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_IUserActions: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func changeLike<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(userId: M1, change: M2) -> Cuckoo.__DoNotUse<(Int, Int), Void> where M1.MatchedType == Int, M2.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: userId) { $0.0 }, wrap(matchable: change) { $0.1 }]
	        return cuckoo_manager.verify("changeLike(userId: Int, change: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func fetchAllUsers() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("fetchAllUsers()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class IUserActionsStub: IUserActions {
    

    

    
     func changeLike(userId: Int, change: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func fetchAllUsers()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: CleanRepository/model/User/UsersService.swift at 2019-05-22 11:59:36 +0000

//
//  UsersService.swift
//  CleanRepository
//
//  Created by Ufos on 22/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Cuckoo
@testable import CleanRepository

import Foundation


 class MockIUsersService: IUsersService, Cuckoo.ProtocolMock {
    
     typealias MocksType = IUsersService
    
     typealias Stubbing = __StubbingProxy_IUsersService
     typealias Verification = __VerificationProxy_IUsersService

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: IUsersService?

     func enableDefaultImplementation(_ stub: IUsersService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func fetchAllUsers(completion: @escaping (_ response: [User], _ error: Any?)->())  {
        
    return cuckoo_manager.call("fetchAllUsers(completion: @escaping (_ response: [User], _ error: Any?)->())",
            parameters: (completion),
            escapingParameters: (completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchAllUsers(completion: completion))
        
    }
    

	 struct __StubbingProxy_IUsersService: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchAllUsers<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((_ response: [User], _ error: Any?)->())> where M1.MatchedType == (_ response: [User], _ error: Any?)->() {
	        let matchers: [Cuckoo.ParameterMatcher<((_ response: [User], _ error: Any?)->())>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIUsersService.self, method: "fetchAllUsers(completion: @escaping (_ response: [User], _ error: Any?)->())", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_IUsersService: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchAllUsers<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.__DoNotUse<((_ response: [User], _ error: Any?)->()), Void> where M1.MatchedType == (_ response: [User], _ error: Any?)->() {
	        let matchers: [Cuckoo.ParameterMatcher<((_ response: [User], _ error: Any?)->())>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("fetchAllUsers(completion: @escaping (_ response: [User], _ error: Any?)->())", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class IUsersServiceStub: IUsersService {
    

    

    
     func fetchAllUsers(completion: @escaping (_ response: [User], _ error: Any?)->())   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: CleanRepository/observer/Observers.swift at 2019-05-22 11:59:36 +0000

//
//  Observers.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Cuckoo
@testable import CleanRepository

import Foundation


 class MockIEventObserver: IEventObserver, Cuckoo.ProtocolMock {
    
     typealias MocksType = IEventObserver
    
     typealias Stubbing = __StubbingProxy_IEventObserver
     typealias Verification = __VerificationProxy_IEventObserver

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: IEventObserver?

     func enableDefaultImplementation(_ stub: IEventObserver) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func publish(type: EventType, extraData: Any?)  {
        
    return cuckoo_manager.call("publish(type: EventType, extraData: Any?)",
            parameters: (type, extraData),
            escapingParameters: (type, extraData),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.publish(type: type, extraData: extraData))
        
    }
    
    
    
     func subscribe(type: EventType, callback: @escaping (_ extraData: Any?)->())  {
        
    return cuckoo_manager.call("subscribe(type: EventType, callback: @escaping (_ extraData: Any?)->())",
            parameters: (type, callback),
            escapingParameters: (type, callback),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.subscribe(type: type, callback: callback))
        
    }
    
    
    
     func dispose()  {
        
    return cuckoo_manager.call("dispose()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.dispose())
        
    }
    

	 struct __StubbingProxy_IEventObserver: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func publish<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(type: M1, extraData: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(EventType, Any?)> where M1.MatchedType == EventType, M2.OptionalMatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(EventType, Any?)>] = [wrap(matchable: type) { $0.0 }, wrap(matchable: extraData) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIEventObserver.self, method: "publish(type: EventType, extraData: Any?)", parameterMatchers: matchers))
	    }
	    
	    func subscribe<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(type: M1, callback: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(EventType, (_ extraData: Any?)->())> where M1.MatchedType == EventType, M2.MatchedType == (_ extraData: Any?)->() {
	        let matchers: [Cuckoo.ParameterMatcher<(EventType, (_ extraData: Any?)->())>] = [wrap(matchable: type) { $0.0 }, wrap(matchable: callback) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIEventObserver.self, method: "subscribe(type: EventType, callback: @escaping (_ extraData: Any?)->())", parameterMatchers: matchers))
	    }
	    
	    func dispose() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIEventObserver.self, method: "dispose()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_IEventObserver: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func publish<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(type: M1, extraData: M2) -> Cuckoo.__DoNotUse<(EventType, Any?), Void> where M1.MatchedType == EventType, M2.OptionalMatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(EventType, Any?)>] = [wrap(matchable: type) { $0.0 }, wrap(matchable: extraData) { $0.1 }]
	        return cuckoo_manager.verify("publish(type: EventType, extraData: Any?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func subscribe<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(type: M1, callback: M2) -> Cuckoo.__DoNotUse<(EventType, (_ extraData: Any?)->()), Void> where M1.MatchedType == EventType, M2.MatchedType == (_ extraData: Any?)->() {
	        let matchers: [Cuckoo.ParameterMatcher<(EventType, (_ extraData: Any?)->())>] = [wrap(matchable: type) { $0.0 }, wrap(matchable: callback) { $0.1 }]
	        return cuckoo_manager.verify("subscribe(type: EventType, callback: @escaping (_ extraData: Any?)->())", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func dispose() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("dispose()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class IEventObserverStub: IEventObserver {
    

    

    
     func publish(type: EventType, extraData: Any?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func subscribe(type: EventType, callback: @escaping (_ extraData: Any?)->())   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func dispose()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: CleanRepository/profile/ProfilePresenter.swift at 2019-05-22 11:59:36 +0000

//
//  ProfilePresenter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Cuckoo
@testable import CleanRepository

import Foundation
import ReSwift
import RxSwift


 class MockIProfilePresenter: IProfilePresenter, Cuckoo.ProtocolMock {
    
     typealias MocksType = IProfilePresenter
    
     typealias Stubbing = __StubbingProxy_IProfilePresenter
     typealias Verification = __VerificationProxy_IProfilePresenter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: IProfilePresenter?

     func enableDefaultImplementation(_ stub: IProfilePresenter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func viewDidLoad()  {
        
    return cuckoo_manager.call("viewDidLoad()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewDidLoad())
        
    }
    
    
    
     func viewWillAppear()  {
        
    return cuckoo_manager.call("viewWillAppear()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewWillAppear())
        
    }
    
    
    
     func viewWillDisappear()  {
        
    return cuckoo_manager.call("viewWillDisappear()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewWillDisappear())
        
    }
    
    
    
     func likeValueChanged(change: Int)  {
        
    return cuckoo_manager.call("likeValueChanged(change: Int)",
            parameters: (change),
            escapingParameters: (change),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.likeValueChanged(change: change))
        
    }
    

	 struct __StubbingProxy_IProfilePresenter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfilePresenter.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func viewWillAppear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfilePresenter.self, method: "viewWillAppear()", parameterMatchers: matchers))
	    }
	    
	    func viewWillDisappear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfilePresenter.self, method: "viewWillDisappear()", parameterMatchers: matchers))
	    }
	    
	    func likeValueChanged<M1: Cuckoo.Matchable>(change: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: change) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfilePresenter.self, method: "likeValueChanged(change: Int)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_IProfilePresenter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewWillAppear() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewWillAppear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewWillDisappear() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewWillDisappear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func likeValueChanged<M1: Cuckoo.Matchable>(change: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: change) { $0 }]
	        return cuckoo_manager.verify("likeValueChanged(change: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class IProfilePresenterStub: IProfilePresenter {
    

    

    
     func viewDidLoad()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func viewWillAppear()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func viewWillDisappear()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func likeValueChanged(change: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockIProfileView: IProfileView, Cuckoo.ProtocolMock {
    
     typealias MocksType = IProfileView
    
     typealias Stubbing = __StubbingProxy_IProfileView
     typealias Verification = __VerificationProxy_IProfileView

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: IProfileView?

     func enableDefaultImplementation(_ stub: IProfileView) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func setUserName(name: String)  {
        
    return cuckoo_manager.call("setUserName(name: String)",
            parameters: (name),
            escapingParameters: (name),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setUserName(name: name))
        
    }
    
    
    
     func enableProfileView(show: Bool)  {
        
    return cuckoo_manager.call("enableProfileView(show: Bool)",
            parameters: (show),
            escapingParameters: (show),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.enableProfileView(show: show))
        
    }
    
    
    
     func enableStepper(enabled: Bool)  {
        
    return cuckoo_manager.call("enableStepper(enabled: Bool)",
            parameters: (enabled),
            escapingParameters: (enabled),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.enableStepper(enabled: enabled))
        
    }
    

	 struct __StubbingProxy_IProfileView: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setUserName<M1: Cuckoo.Matchable>(name: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: name) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfileView.self, method: "setUserName(name: String)", parameterMatchers: matchers))
	    }
	    
	    func enableProfileView<M1: Cuckoo.Matchable>(show: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: show) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfileView.self, method: "enableProfileView(show: Bool)", parameterMatchers: matchers))
	    }
	    
	    func enableStepper<M1: Cuckoo.Matchable>(enabled: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: enabled) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIProfileView.self, method: "enableStepper(enabled: Bool)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_IProfileView: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setUserName<M1: Cuckoo.Matchable>(name: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: name) { $0 }]
	        return cuckoo_manager.verify("setUserName(name: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func enableProfileView<M1: Cuckoo.Matchable>(show: M1) -> Cuckoo.__DoNotUse<(Bool), Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: show) { $0 }]
	        return cuckoo_manager.verify("enableProfileView(show: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func enableStepper<M1: Cuckoo.Matchable>(enabled: M1) -> Cuckoo.__DoNotUse<(Bool), Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: enabled) { $0 }]
	        return cuckoo_manager.verify("enableStepper(enabled: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class IProfileViewStub: IProfileView {
    

    

    
     func setUserName(name: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func enableProfileView(show: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func enableStepper(enabled: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: CleanRepository/router/IRouter.swift at 2019-05-22 11:59:36 +0000

//
//  IRouter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Cuckoo
@testable import CleanRepository

import Foundation
import UIKit


 class MockIRouter: IRouter, Cuckoo.ProtocolMock {
    
     typealias MocksType = IRouter
    
     typealias Stubbing = __StubbingProxy_IRouter
     typealias Verification = __VerificationProxy_IRouter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: IRouter?

     func enableDefaultImplementation(_ stub: IRouter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func navigate(to destination: Destination)  {
        
    return cuckoo_manager.call("navigate(to: Destination)",
            parameters: (destination),
            escapingParameters: (destination),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.navigate(to: destination))
        
    }
    
    
    
     func back(to destination: Destination)  {
        
    return cuckoo_manager.call("back(to: Destination)",
            parameters: (destination),
            escapingParameters: (destination),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.back(to: destination))
        
    }
    
    
    
     func back()  {
        
    return cuckoo_manager.call("back()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.back())
        
    }
    
    
    
     func handleSegue(segue: UIStoryboardSegue)  {
        
    return cuckoo_manager.call("handleSegue(segue: UIStoryboardSegue)",
            parameters: (segue),
            escapingParameters: (segue),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.handleSegue(segue: segue))
        
    }
    

	 struct __StubbingProxy_IRouter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func navigate<M1: Cuckoo.Matchable>(to destination: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Destination)> where M1.MatchedType == Destination {
	        let matchers: [Cuckoo.ParameterMatcher<(Destination)>] = [wrap(matchable: destination) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIRouter.self, method: "navigate(to: Destination)", parameterMatchers: matchers))
	    }
	    
	    func back<M1: Cuckoo.Matchable>(to destination: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Destination)> where M1.MatchedType == Destination {
	        let matchers: [Cuckoo.ParameterMatcher<(Destination)>] = [wrap(matchable: destination) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIRouter.self, method: "back(to: Destination)", parameterMatchers: matchers))
	    }
	    
	    func back() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIRouter.self, method: "back()", parameterMatchers: matchers))
	    }
	    
	    func handleSegue<M1: Cuckoo.Matchable>(segue: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UIStoryboardSegue)> where M1.MatchedType == UIStoryboardSegue {
	        let matchers: [Cuckoo.ParameterMatcher<(UIStoryboardSegue)>] = [wrap(matchable: segue) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIRouter.self, method: "handleSegue(segue: UIStoryboardSegue)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_IRouter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func navigate<M1: Cuckoo.Matchable>(to destination: M1) -> Cuckoo.__DoNotUse<(Destination), Void> where M1.MatchedType == Destination {
	        let matchers: [Cuckoo.ParameterMatcher<(Destination)>] = [wrap(matchable: destination) { $0 }]
	        return cuckoo_manager.verify("navigate(to: Destination)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func back<M1: Cuckoo.Matchable>(to destination: M1) -> Cuckoo.__DoNotUse<(Destination), Void> where M1.MatchedType == Destination {
	        let matchers: [Cuckoo.ParameterMatcher<(Destination)>] = [wrap(matchable: destination) { $0 }]
	        return cuckoo_manager.verify("back(to: Destination)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func back() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("back()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func handleSegue<M1: Cuckoo.Matchable>(segue: M1) -> Cuckoo.__DoNotUse<(UIStoryboardSegue), Void> where M1.MatchedType == UIStoryboardSegue {
	        let matchers: [Cuckoo.ParameterMatcher<(UIStoryboardSegue)>] = [wrap(matchable: segue) { $0 }]
	        return cuckoo_manager.verify("handleSegue(segue: UIStoryboardSegue)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class IRouterStub: IRouter {
    

    

    
     func navigate(to destination: Destination)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func back(to destination: Destination)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func back()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func handleSegue(segue: UIStoryboardSegue)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

