"use strict";(self["webpackChunkfront_end"]=self["webpackChunkfront_end"]||[]).push([[167],{8167:function(t,e,r){r.r(e),r.d(e,{default:function(){return c}});var i=function(){var t=this,e=t.$createElement,r=t._self._c||e;return t.currentTutorial?r("div",{staticClass:"edit-form"},[r("h4",[t._v("Tutorial")]),r("form",[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:"title"}},[t._v("Title")]),r("input",{directives:[{name:"model",rawName:"v-model",value:t.currentTutorial.title,expression:"currentTutorial.title"}],staticClass:"form-control",attrs:{type:"text",id:"title"},domProps:{value:t.currentTutorial.title},on:{input:function(e){e.target.composing||t.$set(t.currentTutorial,"title",e.target.value)}}})]),r("div",{staticClass:"form-group"},[r("label",{attrs:{for:"description"}},[t._v("Description")]),r("input",{directives:[{name:"model",rawName:"v-model",value:t.currentTutorial.description,expression:"currentTutorial.description"}],staticClass:"form-control",attrs:{type:"text",id:"description"},domProps:{value:t.currentTutorial.description},on:{input:function(e){e.target.composing||t.$set(t.currentTutorial,"description",e.target.value)}}})]),r("div",{staticClass:"form-group"},[t._m(0),t._v(" "+t._s("Y"==t.currentTutorial.published?"Published":"Pending")+" ")])]),"Y"==t.currentTutorial.published?r("button",{staticClass:"badge badge-primary mr-2",on:{click:function(e){return t.updatePublished(!1)}}},[t._v(" UnPublish ")]):r("button",{staticClass:"badge badge-primary mr-2",on:{click:function(e){return t.updatePublished(!0)}}},[t._v(" Publish ")]),r("button",{staticClass:"badge badge-danger mr-2",on:{click:t.deleteTutorial}},[t._v(" Delete ")]),r("button",{staticClass:"badge badge-success",attrs:{type:"submit"},on:{click:t.updateTutorial}},[t._v(" Update ")]),r("p",[t._v(t._s(t.message))])]):r("div",[r("br"),r("p",[t._v("Please click on a Tutorial...")])])},a=[function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("label",[r("strong",[t._v("Status:")])])}],o=(r(2526),r(1817),r(7295)),n={name:"tutorial",data:function(){return{currentTutorial:null,message:""}},methods:{getTutorial:function(t){var e=this;o.Z.get(t).then((function(t){e.currentTutorial=t.data,console.log(t.data)})).catch((function(t){console.log(t)}))},updatePublished:function(t){var e=this,r={id:this.currentTutorial.id,title:this.currentTutorial.title,description:this.currentTutorial.description,published:t};o.Z.update(this.currentTutorial.id,r).then((function(r){e.currentTutorial.published=t,console.log(r.data)})).catch((function(t){console.log(t)}))},updateTutorial:function(){var t=this;o.Z.update(this.currentTutorial.id,this.currentTutorial).then((function(e){console.log(e.data),t.message="The tutorial was updated successfully!"})).catch((function(t){console.log(t)}))},deleteTutorial:function(){var t=this;o.Z["delete"](this.currentTutorial.id).then((function(e){console.log(e.data),t.$router.push({name:"tutorials"})})).catch((function(t){console.log(t)}))}},mounted:function(){this.message="",this.getTutorial(this.$route.params.id)}},u=n,s=r(1001),l=(0,s.Z)(u,i,a,!1,null,null,null),c=l.exports}}]);
//# sourceMappingURL=167-legacy.a5aa5fbb.js.map