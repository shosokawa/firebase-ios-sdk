// Copyright 2023 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation

#if os(iOS)

  /// Extends the MultiFactorInfo class for time based one-time password second factors.
  ///
  /// The identifier of this second factor is "totp".
  ///
  /// This class is available on iOS only.
  class TOTPMultiFactorInfo: MultiFactorInfo {
    /// This is the totp info for the second factor.
    let totpInfo: NSObject?

    /// Initialize the AuthProtoMFAEnrollment instance with proto.
    /// - Parameter proto: AuthProtoMFAEnrollment proto object.
    init(proto: AuthProtoMFAEnrollment) {
      totpInfo = proto.totpInfo
      super.init(proto: proto, factorID: PhoneMultiFactorInfo.TOTPMultiFactorID)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
  }
#endif