<template>
  <div class="text-center">
    <div class="grid grid-cols-12 gap-10 md:pt-20">
      <div class="col-span-10 col-start-2 rounded bg-white p-4 text-center text-black">
        <div class="border-twitterBlue mt-4 mb-10 inline-block border-b-8 p-2 text-4xl font-bold">
          ドラッターって何？
        </div>
        <p class="p-4 text-left text-3xl">
          最近のTwitterの運用方法について振り返ることができるアプリです。
        </p>
      </div>

      <div class="col-span-10 col-start-2 rounded bg-white p-4 text-center text-black">
        <div class="border-twitterBlue mt-4 mb-10 inline-block border-b-8 p-2 text-4xl font-bold">
          使い方
        </div>
        <div
          v-for="(description, index) in descriptions"
          :key="index"
          class="flex"
        >
          <div class="p-4 text-left text-3xl">
            {{ description.text }}
          </div>
          <img
            :src="description.imgSrc"
            height="400px"
            width="300px"
            class="p-4"
          >
        </div>
      </div>

      <div class="col-span-10 col-start-2 rounded bg-white p-4 text-center text-black">
        <div class="border-twitterBlue mt-4 mb-10 inline-block border-b-8 p-2 text-4xl font-bold">
          何でドラゴン？
        </div>
        <div class="p-4 text-left text-3xl">
          <p>ドラゴン(竜・龍）は伝説上の生き物で、人間の想像力が生み出した存在です。</p>
          <p>西洋では悪や力の化身であり征服されるものとして、東洋では神や自然の象徴として畏怖される存在として、古来から人の歴史と共に歩んできました。</p>
          <p>今現在でも様々なファンタジー小説やゲームなどに登場し、花形として人気のあるキャラクターです。</p>
          <p>神や悪魔が人の心を象徴したものという現代の神話学的な考え方をするならば、ドラゴンも同様に人の心を表すものとなります。</p>
          <p>強欲や傲慢さ、権威などを表す一方で、人に試練を与えて乗り越えたものに祝福を与える側面もあり、人の心には色々な種類のドラゴンがいると言ってもよいかもしれません。</p>
          <p>21世紀から急速に発達したネット社会は、人々の多種多様な思想や欲望が渦巻く混沌とした様相を呈しています。</p>
          <p>そんなネット社会を代表するSNSを使う人々の心の中を、ドラゴンで例えたら面白いじゃないかと思って作りました。</p>
        </div>
      </div>
    </div>
    <div class="m-16 justify-center">
      <button class=" rounded bg-red-400 p-1 hover:bg-red-600">
        <router-link
          to="/"
          class="inline-flex justify-center rounded bg-red-500 p-4 text-2xl font-bold text-white hover:bg-red-700"
        >
          トップページに戻る
        </router-link>
      </button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
    }
  },
  computed: {
    descriptions() {
      return [
        {
          imgSrc: "/images/howToImage1.jpg",
          text: "トップページの入力画面に診断したいアカウントのIDを入力。「診断する」ボタンを押して、診断結果が返ってくるまで少しの間待機。"
        },
        {
          imgSrc: "/images/howToImage2.jpg",
          text: "ツイート内容や使い方に応じて、診断対象のアカウントの心の様子をドラゴンで表してくれます。"
        },
        {
          imgSrc: "/images/howToImage3.jpg",
          text: "Twitterアカウントでユーザー登録をすると、過去に行った診断結果を振り返ることができます。"
        }
      ]
    }
  }
}
</script>

<style scoped>
</style>
