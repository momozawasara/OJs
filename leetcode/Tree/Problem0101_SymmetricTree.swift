// 101. Symmetric Tree
// https://leetcode.com/problems/symmetric-tree/
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isSymmetric(root?.left, root?.right)
    }
    
    func isSymmetric(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        switch (left, right) {
        case (nil, nil):
            return true
        case let (.some(left), .some(right)):
            return left.val == right.val
                && isSymmetric(left.left, right.right)
                && isSymmetric(left.right, right.left)
        default:
            return false
        }
    }
}