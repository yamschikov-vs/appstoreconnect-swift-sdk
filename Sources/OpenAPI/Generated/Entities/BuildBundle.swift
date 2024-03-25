// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BuildBundle: Codable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case buildBundles
    }

    public struct Attributes: Codable {
        public var bundleID: String?
        public var bundleType: BundleType?
        public var sdkBuild: String?
        public var platformBuild: String?
        public var fileName: String?
        public var hasSirikit: Bool?
        public var hasOnDemandResources: Bool?
        public var hasPrerenderedIcon: Bool?
        public var usesLocationServices: Bool?
        public var isIosBuildMacAppStoreCompatible: Bool?
        public var isIncludesSymbols: Bool?
        public var dSYMURL: URL?
        public var supportedArchitectures: [String]?
        public var requiredCapabilities: [String]?
        public var deviceProtocols: [String]?
        public var locales: [String]?
        public var entitlements: [String: [String: String]]?

        public enum BundleType: String, Codable, CaseIterable {
            case app = "APP"
            case appClip = "APP_CLIP"
        }

        public init(bundleID: String? = nil, bundleType: BundleType? = nil, sdkBuild: String? = nil, platformBuild: String? = nil, fileName: String? = nil, hasSirikit: Bool? = nil, hasOnDemandResources: Bool? = nil, hasPrerenderedIcon: Bool? = nil, usesLocationServices: Bool? = nil, isIosBuildMacAppStoreCompatible: Bool? = nil, isIncludesSymbols: Bool? = nil, dSYMURL: URL? = nil, supportedArchitectures: [String]? = nil, requiredCapabilities: [String]? = nil, deviceProtocols: [String]? = nil, locales: [String]? = nil, entitlements: [String: [String: String]]? = nil) {
            self.bundleID = bundleID
            self.bundleType = bundleType
            self.sdkBuild = sdkBuild
            self.platformBuild = platformBuild
            self.fileName = fileName
            self.hasSirikit = hasSirikit
            self.hasOnDemandResources = hasOnDemandResources
            self.hasPrerenderedIcon = hasPrerenderedIcon
            self.usesLocationServices = usesLocationServices
            self.isIosBuildMacAppStoreCompatible = isIosBuildMacAppStoreCompatible
            self.isIncludesSymbols = isIncludesSymbols
            self.dSYMURL = dSYMURL
            self.supportedArchitectures = supportedArchitectures
            self.requiredCapabilities = requiredCapabilities
            self.deviceProtocols = deviceProtocols
            self.locales = locales
            self.entitlements = entitlements
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.bundleID = try values.decodeIfPresent(String.self, forKey: "bundleId")
            self.bundleType = try values.decodeIfPresent(BundleType.self, forKey: "bundleType")
            self.sdkBuild = try values.decodeIfPresent(String.self, forKey: "sdkBuild")
            self.platformBuild = try values.decodeIfPresent(String.self, forKey: "platformBuild")
            self.fileName = try values.decodeIfPresent(String.self, forKey: "fileName")
            self.hasSirikit = try values.decodeIfPresent(Bool.self, forKey: "hasSirikit")
            self.hasOnDemandResources = try values.decodeIfPresent(Bool.self, forKey: "hasOnDemandResources")
            self.hasPrerenderedIcon = try values.decodeIfPresent(Bool.self, forKey: "hasPrerenderedIcon")
            self.usesLocationServices = try values.decodeIfPresent(Bool.self, forKey: "usesLocationServices")
            self.isIosBuildMacAppStoreCompatible = try values.decodeIfPresent(Bool.self, forKey: "isIosBuildMacAppStoreCompatible")
            self.isIncludesSymbols = try values.decodeIfPresent(Bool.self, forKey: "includesSymbols")
            self.dSYMURL = try values.decodeIfPresent(URL.self, forKey: "dSYMUrl")
            self.supportedArchitectures = try values.decodeIfPresent([String].self, forKey: "supportedArchitectures")
            self.requiredCapabilities = try values.decodeIfPresent([String].self, forKey: "requiredCapabilities")
            self.deviceProtocols = try values.decodeIfPresent([String].self, forKey: "deviceProtocols")
            self.locales = try values.decodeIfPresent([String].self, forKey: "locales")
            self.entitlements = try values.decodeIfPresent([String: [String: String]].self, forKey: "entitlements")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(bundleID, forKey: "bundleId")
            try values.encodeIfPresent(bundleType, forKey: "bundleType")
            try values.encodeIfPresent(sdkBuild, forKey: "sdkBuild")
            try values.encodeIfPresent(platformBuild, forKey: "platformBuild")
            try values.encodeIfPresent(fileName, forKey: "fileName")
            try values.encodeIfPresent(hasSirikit, forKey: "hasSirikit")
            try values.encodeIfPresent(hasOnDemandResources, forKey: "hasOnDemandResources")
            try values.encodeIfPresent(hasPrerenderedIcon, forKey: "hasPrerenderedIcon")
            try values.encodeIfPresent(usesLocationServices, forKey: "usesLocationServices")
            try values.encodeIfPresent(isIosBuildMacAppStoreCompatible, forKey: "isIosBuildMacAppStoreCompatible")
            try values.encodeIfPresent(isIncludesSymbols, forKey: "includesSymbols")
            try values.encodeIfPresent(dSYMURL, forKey: "dSYMUrl")
            try values.encodeIfPresent(supportedArchitectures, forKey: "supportedArchitectures")
            try values.encodeIfPresent(requiredCapabilities, forKey: "requiredCapabilities")
            try values.encodeIfPresent(deviceProtocols, forKey: "deviceProtocols")
            try values.encodeIfPresent(locales, forKey: "locales")
            try values.encodeIfPresent(entitlements, forKey: "entitlements")
        }
    }

    public struct Relationships: Codable {
        public var appClipDomainCacheStatus: AppClipDomainCacheStatus?
        public var appClipDomainDebugStatus: AppClipDomainDebugStatus?
        public var betaAppClipInvocations: BetaAppClipInvocations?
        public var buildBundleFileSizes: BuildBundleFileSizes?

        public struct AppClipDomainCacheStatus: Codable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable {
                public var this: String?
                public var related: String?

                public init(this: String? = nil, related: String? = nil) {
                    self.this = this
                    self.related = related
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.this = try values.decodeIfPresent(String.self, forKey: "self")
                    self.related = try values.decodeIfPresent(String.self, forKey: "related")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(this, forKey: "self")
                    try values.encodeIfPresent(related, forKey: "related")
                }
            }

            public struct Data: Codable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case appClipDomainStatuses
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.type = try values.decode(`Type`.self, forKey: "type")
                    self.id = try values.decode(String.self, forKey: "id")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(type, forKey: "type")
                    try values.encode(id, forKey: "id")
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.links = try values.decodeIfPresent(Links.self, forKey: "links")
                self.data = try values.decodeIfPresent(Data.self, forKey: "data")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(links, forKey: "links")
                try values.encodeIfPresent(data, forKey: "data")
            }
        }

        public struct AppClipDomainDebugStatus: Codable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable {
                public var this: String?
                public var related: String?

                public init(this: String? = nil, related: String? = nil) {
                    self.this = this
                    self.related = related
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.this = try values.decodeIfPresent(String.self, forKey: "self")
                    self.related = try values.decodeIfPresent(String.self, forKey: "related")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(this, forKey: "self")
                    try values.encodeIfPresent(related, forKey: "related")
                }
            }

            public struct Data: Codable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case appClipDomainStatuses
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.type = try values.decode(`Type`.self, forKey: "type")
                    self.id = try values.decode(String.self, forKey: "id")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(type, forKey: "type")
                    try values.encode(id, forKey: "id")
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.links = try values.decodeIfPresent(Links.self, forKey: "links")
                self.data = try values.decodeIfPresent(Data.self, forKey: "data")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(links, forKey: "links")
                try values.encodeIfPresent(data, forKey: "data")
            }
        }

        public struct BetaAppClipInvocations: Codable {
            public var links: Links?
            public var meta: PagingInformation?
            public var data: [Datum]?

            public struct Links: Codable {
                public var this: String?
                public var related: String?

                public init(this: String? = nil, related: String? = nil) {
                    self.this = this
                    self.related = related
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.this = try values.decodeIfPresent(String.self, forKey: "self")
                    self.related = try values.decodeIfPresent(String.self, forKey: "related")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(this, forKey: "self")
                    try values.encodeIfPresent(related, forKey: "related")
                }
            }

            public struct Datum: Codable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case betaAppClipInvocations
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.type = try values.decode(`Type`.self, forKey: "type")
                    self.id = try values.decode(String.self, forKey: "id")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(type, forKey: "type")
                    try values.encode(id, forKey: "id")
                }
            }

            public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
                self.links = links
                self.meta = meta
                self.data = data
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.links = try values.decodeIfPresent(Links.self, forKey: "links")
                self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
                self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(links, forKey: "links")
                try values.encodeIfPresent(meta, forKey: "meta")
                try values.encodeIfPresent(data, forKey: "data")
            }
        }

        public struct BuildBundleFileSizes: Codable {
            public var links: Links?
            public var meta: PagingInformation?
            public var data: [Datum]?

            public struct Links: Codable {
                public var this: String?
                public var related: String?

                public init(this: String? = nil, related: String? = nil) {
                    self.this = this
                    self.related = related
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.this = try values.decodeIfPresent(String.self, forKey: "self")
                    self.related = try values.decodeIfPresent(String.self, forKey: "related")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(this, forKey: "self")
                    try values.encodeIfPresent(related, forKey: "related")
                }
            }

            public struct Datum: Codable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case buildBundleFileSizes
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.type = try values.decode(`Type`.self, forKey: "type")
                    self.id = try values.decode(String.self, forKey: "id")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(type, forKey: "type")
                    try values.encode(id, forKey: "id")
                }
            }

            public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
                self.links = links
                self.meta = meta
                self.data = data
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.links = try values.decodeIfPresent(Links.self, forKey: "links")
                self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
                self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(links, forKey: "links")
                try values.encodeIfPresent(meta, forKey: "meta")
                try values.encodeIfPresent(data, forKey: "data")
            }
        }

        public init(appClipDomainCacheStatus: AppClipDomainCacheStatus? = nil, appClipDomainDebugStatus: AppClipDomainDebugStatus? = nil, betaAppClipInvocations: BetaAppClipInvocations? = nil, buildBundleFileSizes: BuildBundleFileSizes? = nil) {
            self.appClipDomainCacheStatus = appClipDomainCacheStatus
            self.appClipDomainDebugStatus = appClipDomainDebugStatus
            self.betaAppClipInvocations = betaAppClipInvocations
            self.buildBundleFileSizes = buildBundleFileSizes
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.appClipDomainCacheStatus = try values.decodeIfPresent(AppClipDomainCacheStatus.self, forKey: "appClipDomainCacheStatus")
            self.appClipDomainDebugStatus = try values.decodeIfPresent(AppClipDomainDebugStatus.self, forKey: "appClipDomainDebugStatus")
            self.betaAppClipInvocations = try values.decodeIfPresent(BetaAppClipInvocations.self, forKey: "betaAppClipInvocations")
            self.buildBundleFileSizes = try values.decodeIfPresent(BuildBundleFileSizes.self, forKey: "buildBundleFileSizes")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(appClipDomainCacheStatus, forKey: "appClipDomainCacheStatus")
            try values.encodeIfPresent(appClipDomainDebugStatus, forKey: "appClipDomainDebugStatus")
            try values.encodeIfPresent(betaAppClipInvocations, forKey: "betaAppClipInvocations")
            try values.encodeIfPresent(buildBundleFileSizes, forKey: "buildBundleFileSizes")
        }
    }

    public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decode(`Type`.self, forKey: "type")
        self.id = try values.decode(String.self, forKey: "id")
        self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
        self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
        self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(type, forKey: "type")
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(attributes, forKey: "attributes")
        try values.encodeIfPresent(relationships, forKey: "relationships")
        try values.encodeIfPresent(links, forKey: "links")
    }
}
