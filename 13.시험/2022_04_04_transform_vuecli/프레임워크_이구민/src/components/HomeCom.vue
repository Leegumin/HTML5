<template>
  <div id="content">
    <section id="main-section">
      <!-- 본문상세1 -->
      <article>
        <div class="article-header">
          <h1>가입자 명단</h1>
          <p class="article-date">
            현재시각 - <span id="current" class="display"></span>
          </p>
        </div>
        <table>
          <tr>
            <th>순번</th>
            <th>이름</th>
            <th>아이디</th>
            <th>전화번호</th>
            <th>이메일</th>
          </tr>
          <tr v-for="(poeple, index) in poeples" :key="index">
            <td>{{ poeple.no }}</td>
            <td>{{ poeple.name }}</td>
            <td>{{ poeple.id }}</td>
            <td>{{ poeple.phone }}</td>
            <td>{{ poeple.email }}</td>
          </tr>
        </table>
      </article>
      <!-- 본문상세2 -->
      <article id="hobby-list">
        <h1>상세 소개</h1>
        <ul>
          <li v-for="(hobby, index) in hobbies" :key="index">
            <img
              class="hobby-img"
              :src="hobby.image"
              alt="이미지가 없습니다."
            />
            <p v-html="hobby.description"></p>
          </li>
        </ul>
      </article>
      <!-- 본문상세3 -->
      <article id="Who-am-i">
        <h1>{{ whoAmI.title }}</h1>
        <ul>
          <li>이름 : {{ whoAmI.name }}</li>
          <li>나이 : {{ whoAmI.age }}</li>
          <li>취미 : {{ whoAmI.hobby }}</li>
          <li>장점 : {{ whoAmI.advantages }}</li>
          <li>단점 : {{ whoAmI.disadvantages }}</li>
        </ul>
        <br />
        <p v-html="whoAmI.description"></p>
      </article>
    </section>
    <!-- 오른쪽 사이드 메뉴 -->
    <aside id="main-aside">
      <!-- 첫 번째 대메뉴 -->
      <div class="aside-list">
        <h3>카테고리</h3>
        <!-- 소메뉴 -->
        <ul>
          <li><a href="#">데이터</a></li>
        </ul>
      </div>
      <!-- 두 번째 대메뉴 -->
      <div class="aside-list">
        <h3>최근 글</h3>
        <!-- 소메뉴 -->
        <ul>
          <li><a href="#">데이터</a></li>
        </ul>
      </div>
      <div class="aside-list">
        <h3>링크</h3>
        <ul>
          <li v-for="(asideDomain, index) in asideDomains" :key="index">
            <a :href="asideDomain.href" target="_blank">{{
              asideDomain.name
            }}</a>
          </li>
        </ul>
      </div>
    </aside>
  </div>
</template>

<script>
import setCurTime from "@/util/time.js";

export default {
  data() {
    return {
      resId: 0,
      asideDomains: [
        {
          name: "구글",
          href: "http://www.google.com",
        },
        {
          name: "네이버",
          href: "http://www.naver.com",
        },
        {
          name: "다음",
          href: "http://www.daum.net",
        },
      ],
      poeples: [
        {
          no: 1,
          id: "onegildong",
          name: "일길동",
          phone: "010-1111-1111",
          email: "onerotto@naver.com",
        },
        {
          no: 2,
          id: "twogildong",
          name: "이길동",
          phone: "010-2222-2222",
          email: "tworotto@naver.com",
        },
        {
          no: 3,
          id: "threegildong",
          name: "삼길동",
          phone: "010-3333-3333",
          email: "threerotto@naver.com",
        },
      ],
      hobbies: [
        {
          image: require("@/assets/img/cafe.jpg"),
          description:
            "일길동씨의 취미는 카페 탐방입니다.<br>여러 카페를 전전하며 자신만의 글을 쓰는 시간을 가지는걸 즐겨합니다.",
        },
        {
          image: require("@/assets/img/game.jpg"),
          description:
            "이길동씨의 취미는 게임입니다.<br>여러가지 다양한 게임들을 여가시간에 하는 것이 그의 낙입니다.",
        },
        {
          image: require("@/assets/img/warking.jpg"),
          description:
            "삼길동씨의 취미는 산책입니다.<br>사색을 즐길 수 있는 다양한 장소를 걷는 것을 좋아합니다.",
        },
      ],
      whoAmI: {
        title: "주인장을 소개합니다.",
        name: "이구민",
        age: "32",
        hobby: "게임, 산책, 독서",
        advantages: "강박적인 결말주의자",
        disadvantages: "소심한 겁쟁이",
        description: 
        `
        늦은 나이에 새로운걸 하고 싶어서 도전하게 된 프로그래밍.
        <br><br>
        결코 쉽게 보고 판단하고 도전한건 아니지만, 막상 배우고 보니 어떤걸 해야할지, 어디로 가야할지 갈피를 쉽게 잡을 수 없는 낯설고 거대한 세계가 보이는 것 같습니다.
        <br><br>
        그럼에도 불구하고, 걱정한 것 만큼 지루한 작업이라는 생각도 들지 않고, 이 분야에 대한 새로운것을 접했을때 그것을 알고 싶다는 욕심이 샘솟고, 그렇게 배운것들을 통해 만들어내는 결과물을 봤을때 뿌듯함이 드는 것이 정말 제게는 너무나도 즐겁습니다.
        <br><br>
        때문에, 비록 저에게 너무나 낯설고 거대한 세계이지만, 그 세계를 여행하는 과정이 결코 지루하지 않을 것이라는 사실이 너무 기대가 됩니다.
        `,
      },
    };
  },
  mounted() {
    this.resId = setCurTime();
  },
  /* 다른 메뉴로 가기 전 setCurTime 꺼주는 함수 */
  beforeRouteLeave(to, from, next) {
    clearInterval(this.resId);
    next();
  },
};
</script>

<style scoped>
@import "@/assets/css/section.css";
</style>