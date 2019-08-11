<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<style>
/*cssrest   css重置*/
ul{
  list-style:none;
}
a{
  text-decoration:none;
}
*{
  margin:0;
  padding:0;
}
[v-cloak]{
  display: none;
}
::-webkit-input-placeholder { /* Chrome/Opera/Safari */ 
			color:rgb(181,184,187);
		}
		::-moz-placeholder { /* Firefox 19+ */  
			color:rgb(181,184,187);
		}
		:-ms-input-placeholder { /* IE 10+ */ 
		 color:rgb(181,184,187);
		}
		:-moz-placeholder { /* Firefox 18- */ 
		 color:rgb(181,184,187);
		}








#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}
#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
</style>
