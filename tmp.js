//
// Definition for binary tree:
// function Tree(x) {
//   this.value = x;
//   this.left = null;
//   this.right = null;
// }
function del(root,data){
    if(null == root){
        return null
    }else if(data < root.value){
         root.left = del(root.left, data)
    }else if(data > root.value){
        root.right = del(root.right, data)
    }else{
        if( (!root.left) && (!root.right) ){
            root = null
        }else if(null == root.left){
            root = root.right
        }else if(null == root.right){
            root = root.left
        }else{
            rp = root
            right = root.left
            i = true
            for( ; ;){
                if(null == right.right){
                   break;
                   }
                rp = right
                right = right.right
                i = false
            }
             if (i){
                if ((!right.left) && (!right.right)){
                    rp.left = null
                   }
                else{                   
                   rp.left = right.left
                   }
                   }
            else {
                if ((!right.left) && (!right.right)){
                    rp.right = null
                   }
                else{
                    rp.right = right.left
                   }
                  }
            right.left = root.left
            right.right = root.right
            root = right
            
        }
        
    }
    return root
      
}
function deleteFromBST(t, queries) {
    if(t == null) return null
    queries.forEach(x=> { t = del(t,x)})
    return t
}
