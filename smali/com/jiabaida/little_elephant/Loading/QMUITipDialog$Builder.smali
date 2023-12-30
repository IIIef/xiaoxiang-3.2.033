.class public Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;
.super Ljava/lang/Object;
.source "QMUITipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder$IconType;
    }
.end annotation


# static fields
.field public static final ICON_TYPE_FAIL:I = 0x3

.field public static final ICON_TYPE_INFO:I = 0x4

.field public static final ICON_TYPE_LOADING:I = 0x1

.field public static final ICON_TYPE_NOTHING:I = 0x0

.field public static final ICON_TYPE_SUCCESS:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIconType:I

.field private mTipWord:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mCurrentIconType:I

    .line 105
    iput-object p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;
    .locals 1

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->create(Z)Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

    move-result-object v0

    return-object v0
.end method

.method public create(Z)Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;
    .locals 7

    .line 137
    new-instance v0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;->setCancelable(Z)V

    const p1, 0x7f0a0055

    .line 139
    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;->setContentView(I)V

    const p1, 0x7f080059

    .line 140
    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 142
    iget v1, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mCurrentIconType:I

    const-string v2, "#00000000"

    const/4 v3, 0x2

    const/4 v4, -0x2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 143
    new-instance v1, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;-><init>(Landroid/content/Context;)V

    const/4 v5, -0x1

    .line 144
    invoke-virtual {v1, v5}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->setColor(I)V

    .line 145
    iget-object v5, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mContext:Landroid/content/Context;

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v5, v6}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->setSize(I)V

    .line 146
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    invoke-virtual {v1, v5}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->setBackgroundColor(I)V

    .line 149
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    const/4 v5, 0x3

    if-eq v1, v3, :cond_1

    if-eq v1, v5, :cond_1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_4

    .line 152
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget v6, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mCurrentIconType:I

    if-ne v6, v3, :cond_2

    .line 157
    iget-object v5, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mContext:Landroid/content/Context;

    const v6, 0x7f0700ee

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    if-ne v6, v5, :cond_3

    .line 159
    iget-object v5, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mContext:Landroid/content/Context;

    const v6, 0x7f0700ef

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 161
    :cond_3
    iget-object v5, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mContext:Landroid/content/Context;

    const v6, 0x7f0700f0

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mTipWord:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 169
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    iget v4, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mCurrentIconType:I

    if-eqz v4, :cond_5

    .line 173
    iget-object v4, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mContext:Landroid/content/Context;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v4, v6}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 175
    :cond_5
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0x11

    .line 178
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 179
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 180
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const-string v2, "#ffffff"

    .line 181
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 182
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 183
    iget-object v2, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mTipWord:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    return-object v0
.end method

.method public setIconType(I)Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;
    .locals 0

    .line 114
    iput p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mCurrentIconType:I

    return-object p0
.end method

.method public setTipWord(Ljava/lang/CharSequence;)Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->mTipWord:Ljava/lang/CharSequence;

    return-object p0
.end method
