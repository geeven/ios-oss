import Foundation

public struct ChangePasswordMutation: GraphMutation {
  var input: ChangePasswordInput

  public init(input: ChangePasswordInput) {
    self.input = input
  }

  public var description: String {
    return """
    mutation updateUserPassword($input: UpdateUserAccountInput!) {\
      updateUserAccount(input: $input) {\
        clientMutationId\
      }\
    }
    """
  }
}
