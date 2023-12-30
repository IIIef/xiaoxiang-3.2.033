.class public Lcom/jiabaida/little_elephant/view/MyViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "MyViewPager.java"


# instance fields
.field private isCanScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/view/MyViewPager;->isCanScroll:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/view/MyViewPager;->isCanScroll:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/MyViewPager;->isCanScroll:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/MyViewPager;->isCanScroll:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-super {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setScanScroll(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/view/MyViewPager;->isCanScroll:Z

    return-void
.end method
