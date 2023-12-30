.class public Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$CustomBuilder;
.super Ljava/lang/Object;
.source "QMUITipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomBuilder"
.end annotation


# instance fields
.field private mContentLayoutId:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$CustomBuilder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;
    .locals 5

    .line 213
    new-instance v0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$CustomBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0055

    .line 214
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;->setContentView(I)V

    const v1, 0x7f080059

    .line 215
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 216
    iget-object v2, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$CustomBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$CustomBuilder;->mContentLayoutId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-object v0
.end method

.method public setContent(I)Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$CustomBuilder;
    .locals 0

    .line 203
    iput p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$CustomBuilder;->mContentLayoutId:I

    return-object p0
.end method
