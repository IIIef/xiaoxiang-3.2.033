.class public Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;
.super Landroid/widget/LinearLayout;
.source "ScanListViewFooter.java"


# static fields
.field public static final STATE_LOADING:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_READY:I = 0x1


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHintView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    .line 119
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0a0027

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 121
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->addView(Landroid/view/View;)V

    .line 122
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0802b3

    .line 124
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mContentView:Landroid/view/View;

    const v0, 0x7f0802b5

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mProgressBar:Landroid/view/View;

    const v0, 0x7f0802b4

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mHintView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getBottomMargin()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return v0
.end method

.method public hide()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 105
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 106
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public loading()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mHintView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public normal()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mHintView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setBottomMargin(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 74
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setState(I)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mHintView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 58
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mHintView:Landroid/widget/TextView;

    const v0, 0x7f0d0075

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 62
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mProgressBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mHintView:Landroid/widget/TextView;

    const v0, 0x7f0d0074

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    .line 114
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 115
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
