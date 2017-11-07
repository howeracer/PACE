#include <iostream>
#include <vector>
#include <fstream>
#include <string>
using namespace std;

using std::cin;
using std::cout;
using std::pair;
using std::make_pair;
using std::vector;


void Solve_Maze(vector<vector<char> > &maze, pair<int, int > p, vector<vector<bool> > & visited, vector<pair<int ,int> > &solution,bool &Solved){
  int m=maze.size();
  if(m==0) return;
  int n=maze[0].size();
  if(n==0) return;
  //cout<<m<<' '<<n<<endl;
  //cout<<visited.size()<<' ' <<visited[0].size()<<endl;
  if(p.first<0 || p.first>=m || p.second<0 || p.second>=n) return;
  if(visited[p.first][p.second]) return;
  if(maze[p.first][p.second]=='x') return;

  if(maze[p.first][p.second]=='f'){
    solution.push_back(p);
    Solved = true;
    return;
  }
  if(p.first>=0 && p.first<m && p.second>=0 && p.second<n && !Solved){
    //if(!Solved){
    solution.push_back(p);
    // cout<<p.first<<','<<p.second<<endl;

    if(maze[p.first][p.second]=='o'||maze[p.first][p.second]=='.'){
      visited[p.first][p.second]=true;
      if(visited[p.first][p.second])
		cout<<p.first<<','<<p.second<<endl;

      Solve_Maze(maze,make_pair(p.first+1,p.second),visited,solution, Solved);
      Solve_Maze(maze,make_pair(p.first-1,p.second),visited,solution, Solved);
      Solve_Maze(maze,make_pair(p.first,p.second+1),visited,solution, Solved);
      Solve_Maze(maze,make_pair(p.first,p.second-1),visited,solution, Solved);
    }
    //  else if(maze[p.first][p.second]=='f'){
    //          Solved = true;
    //	      return;
    //}
    if(!Solved){
      if(solution.size()>0)
	solution.pop_back();}
    
  }
  else return;
}

int main(int argc, char* argv[])
{
  
    int m;
    pair <int, int> p;
    vector< vector<char> > maze;
    vector<char> tmp;
    string line;
    
    if(argc < 2){
      std::cerr <<"input error"<<std::endl;
    }
    // string input = argv[1];
    
    ifstream myfile(argv[1]);
    // myfile.open(input);
    if(myfile.is_open()){
      while(getline(myfile,line)){
        m=line.size();
	cout<<m<<' ';
	for(int i=0;i<m;i++){
	  tmp.push_back(line[i]);
	}
	maze.push_back(tmp);
	tmp.clear();
      }
      myfile.close();
    }
    else cout << "Unable to open file.";
    
    //cout<<m<<' ';
    //cout<<m;
    
    int n=maze.size();
    for(int i=0;i<n;i++){
      for(int j=0;j<m;j++){
		if(maze[i][j]=='o')
		  p=make_pair(i,j);
		 cout << maze[i][j];
      }
       cout<<endl;
    }
    //  cout<<p.first<<','<<p.second;
   // cout << dfs(maze, p) << std::endl;
   // cout << bfs(maze,p);
    m=maze.size();
    n=maze[0].size();
    vector<vector<bool> > visited(m, vector<bool>(n,false));
    vector<pair<int ,int> > solution;
    bool Solved=false;
    Solve_Maze(maze, p, visited,solution, Solved);
    
    if(Solved){
      for(int i=0;i<n;i++){
	for(int j=0;j<m;j++){
		 cout << maze[i][j];
	}
       cout<<endl;
      }
      cout<<endl;

      maze[p.first][p.second]='.';
      for(int k=1;k<solution.size();k++){
	char tmp=maze[solution[k].first][solution[k].second];
	maze[solution[k].first][solution[k].second]='o';
	for(int i=0;i<maze.size();i++){
	  for(int j=0;j<maze[0].size();j++){
	     //	if(maze[i][j]=='o')
		  //  p=make_pair(i,j);
		cout << maze[i][j];
	   }
	   cout<<endl;
	 }
	 maze[solution[k].first][solution[k].second]=tmp;
	 cout<<endl;
      }
      
      for(int i=0;i<solution.size();i++){
	cout<<solution[i].first<<','<<solution[i].second<<endl;
      }
    }
    else{
      cout<<"unsolvable"<<endl;
    }
    return 0;
}
