#include <fstream>
#include <iostream>
#include <vector>
#include <map>
#include <stdio.h>
std::vector<int> twoSum(std::vector<int>& nums, int target) {
  std::vector<int> res;
  std::map<int, int> mp;
        for(int i=0;i<nums.size();i++){
            int gap=target-nums[i];
            if(mp.find(gap)!=mp.end()){
                res.push_back(mp[gap]);
                res.push_back(i);
                return res;
            }
            mp[nums[i]]=i;
        }
        res.push_back(-1);
        res.push_back(-1);
        return res;
    }

int main()
{
  std::vector<int> ttt;
  ttt.push_back(3);
  ttt.push_back(2);
  ttt.push_back(4);
  std::vector<int> res;
  res=twoSum(ttt,6);
  for(int i=0;i<res.size();i++){
    std::cout<<res[i];
  }
    return 0;
}
