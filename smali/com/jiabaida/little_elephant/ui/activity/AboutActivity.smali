.class public Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "AboutActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.AboutActivity"


# instance fields
.field private channelClick:Z

.field private companyClick:Z

.field private contactClick:Z

.field private flTopBack:Landroid/widget/FrameLayout;

.field private ivAboutChannelTag:Landroid/widget/ImageView;

.field private ivAboutCompanyTag:Landroid/widget/ImageView;

.field private ivAboutContactTag:Landroid/widget/ImageView;

.field private ivTopBack:Landroid/widget/ImageView;

.field private llyAboutChannelContent:Landroid/widget/LinearLayout;

.field private llyAboutChannelTitle:Landroid/widget/LinearLayout;

.field private llyAboutCompanyTitle:Landroid/widget/LinearLayout;

.field private llyAboutContactContent:Landroid/widget/LinearLayout;

.field private llyAboutContactTitle:Landroid/widget/LinearLayout;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private tvAboutChannelAl:Landroid/widget/TextView;

.field private tvAboutChannelPhone:Landroid/widget/TextView;

.field private tvAboutChannelTb:Landroid/widget/TextView;

.field private tvAboutCompanyContent:Landroid/widget/TextView;

.field private tvMyVersion:Landroid/widget/TextView;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->companyClick:Z

    .line 149
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->channelClick:Z

    .line 158
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->contactClick:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->setCompanyClickState()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->setChannelClickState()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->setContactClickState()V

    return-void
.end method

.method private setChannelClickState()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->llyAboutChannelContent:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->channelClick:Z

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->ivAboutChannelTag:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->channelClick:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070072

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070073

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->channelClick:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->channelClick:Z

    return-void
.end method

.method private setCompanyClickState()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvAboutCompanyContent:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->companyClick:Z

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->ivAboutCompanyTag:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->companyClick:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070072

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070073

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->companyClick:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->companyClick:Z

    return-void
.end method

.method private setContactClickState()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->llyAboutContactContent:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->contactClick:Z

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->ivAboutContactTag:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->contactClick:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070072

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070073

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->contactClick:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->contactClick:Z

    return-void
.end method

.method private viewClickDealWith(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3

    .line 206
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/AppUtils;->webUrlStringFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    sget-object v1, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->WEB_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    :cond_0
    sget-object p2, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->WEB_URL:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.DIAL"

    .line 217
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, p2}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a003f

    return v0
.end method

.method protected initData()V
    .locals 7

    .line 89
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/AppUtils;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0d0131

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070086

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvAboutChannelAl:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvAboutChannelTb:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvAboutChannelAl:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvAboutChannelTb:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070084

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 104
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvAboutChannelAl:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvAboutChannelTb:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvAboutChannelAl:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvAboutChannelTb:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->setCompanyClickState()V

    .line 112
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->setChannelClickState()V

    .line 113
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->setContactClickState()V

    .line 114
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->llyAboutCompanyTitle:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->llyAboutChannelTitle:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity$3;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->llyAboutContactTitle:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity$4;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvMyVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/AppUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 60
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 61
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 62
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 64
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d0195

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 66
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080137

    .line 72
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    const p1, 0x7f08011c

    .line 73
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->llyAboutCompanyTitle:Landroid/widget/LinearLayout;

    const p1, 0x7f0800e2

    .line 74
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->ivAboutCompanyTag:Landroid/widget/ImageView;

    const p1, 0x7f080215

    .line 75
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvAboutCompanyContent:Landroid/widget/TextView;

    const p1, 0x7f08011b

    .line 76
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->llyAboutChannelTitle:Landroid/widget/LinearLayout;

    const p1, 0x7f0800e1

    .line 77
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->ivAboutChannelTag:Landroid/widget/ImageView;

    const p1, 0x7f08011a

    .line 78
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->llyAboutChannelContent:Landroid/widget/LinearLayout;

    const p1, 0x7f08011e

    .line 79
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->llyAboutContactTitle:Landroid/widget/LinearLayout;

    const p1, 0x7f0800e3

    .line 80
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->ivAboutContactTag:Landroid/widget/ImageView;

    const p1, 0x7f08011d

    .line 81
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->llyAboutContactContent:Landroid/widget/LinearLayout;

    const p1, 0x7f080243

    .line 82
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvMyVersion:Landroid/widget/TextView;

    const p1, 0x7f080212

    .line 83
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvAboutChannelAl:Landroid/widget/TextView;

    const p1, 0x7f080214

    .line 84
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvAboutChannelTb:Landroid/widget/TextView;

    const p1, 0x7f080213

    .line 85
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->tvAboutChannelPhone:Landroid/widget/TextView;

    return-void
.end method

.method public onClickAbout(Landroid/view/View;)V
    .locals 2

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const p1, 0x7f080214

    .line 175
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->viewClickDealWith(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const p1, 0x7f080213

    .line 179
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->viewClickDealWith(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const p1, 0x7f080212

    .line 171
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->viewClickDealWith(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const p1, 0x7f080222

    .line 195
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->viewClickDealWith(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const p1, 0x7f080221

    .line 191
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->viewClickDealWith(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const p1, 0x7f080220

    .line 187
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->viewClickDealWith(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const p1, 0x7f08021f

    .line 183
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->viewClickDealWith(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080120
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f080212
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
