.class public Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;
.super Landroid/widget/LinearLayout;
.source "ScanListViewHeader.java"


# static fields
.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_READY:I = 0x1

.field public static final STATE_REFRESHING:I = 0x2


# instance fields
.field private final ROTATE_ANIM_DURATION:I

.field private mContainer:Landroid/widget/LinearLayout;

.field private mHeaderTimeLabel:Landroid/widget/TextView;

.field private mHeaderTimeView:Landroid/widget/TextView;

.field private mHintTextView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRotateDownAnim:Landroid/view/animation/Animation;

.field private mRotateUpAnim:Landroid/view/animation/Animation;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mState:I

    const/16 v0, 0xb4

    .line 38
    iput v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->ROTATE_ANIM_DURATION:I

    .line 46
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mState:I

    const/16 p2, 0xb4

    .line 38
    iput p2, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->ROTATE_ANIM_DURATION:I

    .line 55
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 10

    .line 59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0a0028

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mContainer:Landroid/widget/LinearLayout;

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x50

    .line 64
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->setGravity(I)V

    const p1, 0x7f0802b8

    .line 67
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mHintTextView:Landroid/widget/TextView;

    const p1, 0x7f0802b9

    .line 68
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f0802bb

    .line 69
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mHeaderTimeView:Landroid/widget/TextView;

    const p1, 0x7f0802bc

    .line 70
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mHeaderTimeLabel:Landroid/widget/TextView;

    .line 71
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xb4

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 75
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 76
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/high16 v4, -0x3ccc0000    # -180.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 80
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method


# virtual methods
.method public getVisiableHeight()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mHeaderTimeLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mHeaderTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setState(I)V
    .locals 3

    .line 84
    iget v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 89
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mHintTextView:Landroid/widget/TextView;

    const v1, 0x7f0d0076

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 108
    :cond_3
    iget v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mState:I

    if-eq v0, v1, :cond_5

    .line 111
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mHintTextView:Landroid/widget/TextView;

    const v1, 0x7f0d0078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mHintTextView:Landroid/widget/TextView;

    const v1, 0x7f0d0077

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    :cond_5
    :goto_1
    iput p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mState:I

    return-void
.end method

.method public setVisiableHeight(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mContainer:Landroid/widget/LinearLayout;

    .line 128
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 130
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewHeader;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
