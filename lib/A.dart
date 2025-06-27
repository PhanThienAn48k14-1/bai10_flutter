class Solution {
  List<List<String>> list=[];
  Set<String> dem={};
  Set<Set<String>> loc={};
  String kq="";
  String? longestCommonPrefix(List<String> strs) {

    for(int i=0; i<strs.length; i++){
      List<String> a= strs[i].split("");
      list.add(a);//ok rồi nè
      // print( list);
    }
    if (list.length<=1) {
      kq=strs[0];
    }
    if(list.length>1){
      for(int a=0; a<list.length-1; a++){
        Set<String> k={};
        k=list[a].toSet().intersection(list[a+1].toSet());//lọc các điểm giống của từng thành phần list
        // print( k);
        loc.add(k);
      }

    }
    if (loc.length>=2) {
      for(int u=0; u<loc.length-1; u++){
        dem.addAll(loc.elementAt(u).intersection(loc.elementAt(u+1)));
        // print(dem);
      }
      kq=dem.join('');
    }
    if(loc.length==1){
      kq=loc.elementAt(0).join('');

    }
    return kq;

  }
}