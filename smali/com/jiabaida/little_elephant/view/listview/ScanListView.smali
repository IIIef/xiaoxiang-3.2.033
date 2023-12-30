.class public Lcom/jiabaida/little_elephant/view/listview/ScanListView;
.super Landroid/widget/ListView;
.source "ScanListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/view/listview/ScanListView$OnXScrollListener;,
        Lcom/jiabaida/little_elephant/view/listview/ScanListView$IXListViewListener;
    }
.end annotation


# static fields
.field private static final OFFSET_RADIO:F = 1.8f

.field private static final PULL_LOAD_MORE_DELTA:I = 0x32

.field private static final SCROLLBACK_FOOTER:I = 0x1

.field private static final SCROLLBACK_HEADER:I = 0x0

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mEnablePullLoad:Z

.field private mEnablePullRefresh:Z

.field private mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

.field private mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

.field private mHeaderViewContent:Landroid/widget/RelativeLayout;

.field private mHeaderViewHeight:I

.field private mLastY:F

.field private mListViewListener:Lcom/jiabaida/little_elephant/view/listview/ScanListView$IXListViewListener;

.field private mPullLoading:Z

.field private mPullRefreshing:Z

.field private mScrollBack:I

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mTotalItemCount:I

.field private m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 28
    iput v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mLastY:F

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullRefresh:Z

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullRefreshing:Z

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    .line 53
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullLoad:Z

    .line 55
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullLoading:Z

    .line 83
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->initWithContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 28
    iput p2, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mLastY:F

    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullRefresh:Z

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullRefreshing:Z

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    .line 53
    iput-boolean p2, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullLoad:Z

    .line 55
    iput-boolean p2, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullLoading:Z

    .line 88
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->initWithContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 28
    iput p2, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mLastY:F

    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullRefresh:Z

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullRefreshing:Z

    const/4 p3, 0x0

    .line 51
    iput-object p3, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    .line 53
    iput-boolean p2, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullLoad:Z

    .line 55
    iput-boolean p2, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullLoading:Z

    .line 93
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->initWithContext(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/jiabaida/little_elephant/view/listview/ScanListView;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderViewHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/view/listview/ScanListView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/view/listview/ScanListView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->startLoadMore()V

    return-void
.end method

.method private initWithContext(Landroid/content/Context;)V
    .locals 2

    .line 97
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mScroller:Landroid/widget/Scroller;

    .line 100
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 102
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->m_context:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    invoke-direct {v0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    const p1, 0x7f0802b7

    .line 105
    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    .line 106
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->addHeaderView(Landroid/view/View;)V

    .line 109
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/view/listview/ScanListView$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView$1;-><init>(Lcom/jiabaida/little_elephant/view/listview/ScanListView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private invokeOnScrolling()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v1, v0, Lcom/jiabaida/little_elephant/view/listview/ScanListView$OnXScrollListener;

    if-eqz v1, :cond_0

    .line 205
    check-cast v0, Lcom/jiabaida/little_elephant/view/listview/ScanListView$OnXScrollListener;

    .line 206
    invoke-interface {v0, p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView$OnXScrollListener;->onXScrolling(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private resetFooterHeight()V
    .locals 7

    .line 262
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->getBottomMargin()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 264
    iput v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mScrollBack:I

    .line 265
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    neg-int v5, v3

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 266
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->invalidate()V

    :cond_0
    return-void
.end method

.method private resetHeaderHeight()V
    .locals 7

    .line 226
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->getVisiableHeight()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 230
    :cond_0
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullRefreshing:Z

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderViewHeight:I

    if-gt v3, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 235
    iget v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderViewHeight:I

    if-le v3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 239
    :goto_0
    iput v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mScrollBack:I

    .line 240
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    sub-int v5, v0, v3

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 243
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->invalidate()V

    return-void
.end method

.method private startLoadMore()V
    .locals 2

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullLoading:Z

    .line 272
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->setState(I)V

    .line 273
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mListViewListener:Lcom/jiabaida/little_elephant/view/listview/ScanListView$IXListViewListener;

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView$IXListViewListener;->onLoadMore()V

    :cond_0
    return-void
.end method

.method private updateFooterHeight(F)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->getBottomMargin()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 248
    iget-boolean p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullLoad:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullLoading:Z

    if-nez p1, :cond_1

    const/16 p1, 0x32

    if-le v0, p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->setState(I)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->setState(I)V

    .line 256
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->setBottomMargin(I)V

    return-void
.end method

.method private updateHeaderHeight(F)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    float-to-int p1, p1

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->getVisiableHeight()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->setVisiableHeight(I)V

    .line 212
    iget-boolean p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullRefresh:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullRefreshing:Z

    if-nez p1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->getVisiableHeight()I

    move-result p1

    iget v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderViewHeight:I

    if-le p1, v1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->setState(I)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->setState(I)V

    .line 219
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mScrollBack:I

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->setVisiableHeight(I)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->setBottomMargin(I)V

    .line 337
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->postInvalidate()V

    .line 338
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->invokeOnScrolling()V

    .line 341
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    return-void
.end method

.method public getPullLoading()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullLoading:Z

    return v0
.end method

.method public getPullRefreshing()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullRefreshing:Z

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 360
    iput p4, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mTotalItemCount:I

    .line 361
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 362
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 280
    iget v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mLastY:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mLastY:F

    .line 284
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    .line 302
    iput v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mLastY:F

    .line 303
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 305
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullRefresh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderViewHeight:I

    if-le v0, v1, :cond_1

    .line 306
    iput-boolean v3, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullRefreshing:Z

    .line 307
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->setState(I)V

    .line 308
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mListViewListener:Lcom/jiabaida/little_elephant/view/listview/ScanListView$IXListViewListener;

    if-eqz v0, :cond_1

    .line 309
    invoke-interface {v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView$IXListViewListener;->onRefresh()V

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->resetHeaderHeight()V

    goto/16 :goto_0

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mTotalItemCount:I

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_9

    .line 315
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullLoad:Z

    if-eqz v0, :cond_9

    .line 316
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->getBottomMargin()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_3

    .line 317
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->startLoadMore()V

    .line 319
    :cond_3
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->resetFooterHeight()V

    goto :goto_0

    .line 289
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mLastY:F

    sub-float/2addr v0, v1

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mLastY:F

    .line 291
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    const v4, 0x3fe66666    # 1.8f

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->getVisiableHeight()I

    move-result v1

    if-gtz v1, :cond_5

    cmpl-float v1, v0, v2

    if-lez v1, :cond_6

    :cond_5
    div-float/2addr v0, v4

    .line 293
    invoke-direct {p0, v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->updateHeaderHeight(F)V

    .line 294
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->invokeOnScrolling()V

    goto :goto_0

    .line 295
    :cond_6
    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullLoad:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->getLastVisiblePosition()I

    move-result v1

    iget v5, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mTotalItemCount:I

    sub-int/2addr v5, v3

    if-ne v1, v5, :cond_9

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    .line 296
    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->getBottomMargin()I

    move-result v1

    if-gtz v1, :cond_7

    cmpg-float v1, v0, v2

    if-gez v1, :cond_9

    :cond_7
    neg-float v0, v0

    div-float/2addr v0, v4

    .line 298
    invoke-direct {p0, v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->updateFooterHeight(F)V

    goto :goto_0

    .line 286
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mLastY:F

    .line 324
    :cond_9
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pullRefreshing()V
    .locals 2

    .line 127
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullRefresh:Z

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->setVisiableHeight(I)V

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullRefreshing:Z

    .line 132
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->setState(I)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullLoad:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 158
    :cond_0
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullLoad:Z

    if-nez p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    if-eqz p1, :cond_3

    .line 161
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    if-nez p1, :cond_2

    .line 166
    new-instance p1, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->m_context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    .line 167
    new-instance v0, Lcom/jiabaida/little_elephant/view/listview/ScanListView$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView$2;-><init>(Lcom/jiabaida/little_elephant/view/listview/ScanListView;)V

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->addFooterView(Landroid/view/View;)V

    .line 175
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->setState(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPullRefreshEnable(Z)V
    .locals 1

    .line 141
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mEnablePullRefresh:Z

    if-nez p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setXListViewListener(Lcom/jiabaida/little_elephant/view/listview/ScanListView$IXListViewListener;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mListViewListener:Lcom/jiabaida/little_elephant/view/listview/ScanListView$IXListViewListener;

    return-void
.end method

.method public stopLoadMore()V
    .locals 2

    .line 197
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullLoading:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullLoading:Z

    .line 199
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mFooterView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->setState(I)V

    :cond_0
    return-void
.end method

.method public stopRefresh()V
    .locals 3

    .line 184
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 185
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 186
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mHeaderView:Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;

    const-string v2, "%Y-%m-%d %T"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->setRefreshTime(Ljava/lang/String;)V

    .line 187
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullRefreshing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->mPullRefreshing:Z

    .line 189
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->resetHeaderHeight()V

    :cond_0
    return-void
.end method
