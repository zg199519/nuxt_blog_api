'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {

  // 文章列表数据
  async list() {
    const { ctx } = this;
    const params = ctx.request.body;
    const data = await ctx.service.article.getList(params);
    ctx.body = await ctx.helper.successResponse({list:data});
  }
  // 详情
  async detail() {
    const { ctx } = this;
    const query = ctx.query;
    const data = await ctx.service.article.getDetail(query);
    ctx.body = await ctx.helper.successResponse(data);
  }

  // 新增文章
  async addArticle() {
    const { ctx } = this;
    const userInfo = await ctx.service.user.userInfo('', '', ctx.query.USERID);
    if(Number(userInfo.authority) !== 1){
      ctx.body = await ctx.helper.failureResponse('你不是站长，没有权限发布文章！');
      return false;
    }
    const params = ctx.request.body;
    await ctx.service.article.addArticle(params);
    ctx.body = await ctx.helper.successResponse();
  }

  // // 书列表
  // async bookList() {
  //   const { ctx } = this;
  //   const params = ctx.request.body;
  //   const data = await ctx.service.book.getList(params);
  //   ctx.body = await ctx.helper.successResponse(data);
  // }

  // // 我的文章列表根据小册的ID来获取
  // async myArticleList() {
  //   const { ctx } = this;
  //   const query = ctx.query;
  //   const params = ctx.request.body;
  //   params.userId = query.USERID;

  //   const data = await ctx.service.article.myArticleList(params);
  //   ctx.body = await ctx.helper.successResponse(data);
  // }

  // // 我的书列表
  // async myBookList() {
  //   const { ctx } = this;
  //   const query = ctx.query;
  //   const params = ctx.request.body;
  //   params.userId = query.USERID;

  //   const data = await ctx.service.book.getList(params);
  //   ctx.body = await ctx.helper.successResponse(data);
  // }

  // // 文章详情
  // async articleDetail() {
  //   const { ctx } = this;
  //   const query = ctx.query;

  //   const data = await ctx.service.article.articleDetail(query);
  //   ctx.body = await ctx.helper.successResponse(data);
  // }

  // // 新增小册
  // async addBook() {
  //   const { ctx } = this;
  //   const query = ctx.query;
  //   const params = ctx.request.body;
  //   params.userId = query.USERID;
  //   // ctx.body = params;
  //   await ctx.service.book.addBook(params);
  //   ctx.body = await ctx.helper.successResponse();
  // }



  // // 修改小册
  // async modifyBook() {
  //   const { ctx } = this;
  //   const params = ctx.request.body;
  //   await ctx.service.book.modifyBook(params);
  //   ctx.body = await ctx.helper.successResponse();
  // }

  // // 修改文章
  // async modifyArticle() {
  //   const { ctx } = this;
  //   const params = ctx.request.body;
  //   await ctx.service.article.modifyArticle(params);
  //   ctx.body = await ctx.helper.successResponse();
  // }


}

module.exports = HomeController;
