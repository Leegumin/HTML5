"use strict";(self["webpackChunkfront_end"]=self["webpackChunkfront_end"]||[]).push([[560],{3560:function(t,i,e){e.r(i),e.d(i,{default:function(){return c}});var o=function(){var t=this,i=t.$createElement,e=t._self._c||i;return e("div",{staticClass:"submit-form"},[t.submitted?e("div",[e("h4",[t._v("You submitted successfully!")]),e("button",{staticClass:"btn btn-success",on:{click:t.newTutorial}},[t._v("Add")])]):e("div",[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:"title"}},[t._v("Title")]),e("input",{directives:[{name:"model",rawName:"v-model",value:t.tutorial.title,expression:"tutorial.title"}],staticClass:"form-control",attrs:{type:"text",id:"title",required:"",name:"title"},domProps:{value:t.tutorial.title},on:{input:function(i){i.target.composing||t.$set(t.tutorial,"title",i.target.value)}}})]),e("div",{staticClass:"form-group"},[e("label",{attrs:{for:"description"}},[t._v("Description")]),e("input",{directives:[{name:"model",rawName:"v-model",value:t.tutorial.description,expression:"tutorial.description"}],staticClass:"form-control",attrs:{id:"description",required:"",name:"description"},domProps:{value:t.tutorial.description},on:{input:function(i){i.target.composing||t.$set(t.tutorial,"description",i.target.value)}}})]),e("button",{staticClass:"btn btn-success",on:{click:t.saveTutorial}},[t._v("Submit")])])])},s=[],r=(e(2526),e(1817),e(7295)),a={name:"add-tutorial",data:function(){return{tutorial:{id:null,title:"",description:"",published:!1},submitted:!1}},methods:{saveTutorial:function(){var t=this,i={title:this.tutorial.title,description:this.tutorial.description};r.Z.create(i).then((function(i){t.tutorial.id=i.data.id,console.log(i.data),t.submitted=!0})).catch((function(t){console.log(t)}))},newTutorial:function(){this.submitted=!1,this.tutorial={}}}},n=a,l=e(1001),u=(0,l.Z)(n,o,s,!1,null,null,null),c=u.exports}}]);
//# sourceMappingURL=560-legacy.3a771971.js.map