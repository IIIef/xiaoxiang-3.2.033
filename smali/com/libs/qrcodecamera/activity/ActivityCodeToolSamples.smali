.class public Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;
.super Landroid/app/Activity;
.source "ActivityCodeToolSamples.java"


# instance fields
.field private mActivityCodeTool:Landroid/widget/LinearLayout;

.field private mEtBarCode:Landroid/widget/EditText;

.field private mEtQrCode:Landroid/widget/EditText;

.field private mIvBarCode:Landroid/widget/ImageView;

.field private mIvCreateBarCode:Landroid/widget/ImageView;

.field private mIvCreateQrCode:Landroid/widget/ImageView;

.field private mIvQrCode:Landroid/widget/ImageView;

.field private mLlBar:Landroid/widget/LinearLayout;

.field private mLlBarCode:Landroid/widget/LinearLayout;

.field private mLlBarRoot:Landroid/widget/LinearLayout;

.field private mLlCode:Landroid/widget/LinearLayout;

.field private mLlQr:Landroid/widget/LinearLayout;

.field private mLlQrRoot:Landroid/widget/LinearLayout;

.field private mLlScaner:Landroid/widget/LinearLayout;

.field private mRxTickerViewMade:Landroid/widget/TextView;

.field private mRxTickerViewScan:Landroid/widget/TextView;

.field private nestedScrollView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/EditText;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mEtQrCode:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/LinearLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlCode:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/ImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mIvQrCode:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->updateMadeCodeCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/EditText;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mEtBarCode:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/LinearLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlBarCode:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/ImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mIvBarCode:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/LinearLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlQrRoot:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/LinearLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlBarRoot:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private initEvent()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mIvCreateQrCode:Landroid/widget/ImageView;

    new-instance v1, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$1;

    invoke-direct {v1, p0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$1;-><init>(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mIvCreateBarCode:Landroid/widget/ImageView;

    new-instance v1, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$2;

    invoke-direct {v1, p0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$2;-><init>(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlScaner:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;

    invoke-direct {v1, p0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;-><init>(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlQr:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$4;

    invoke-direct {v1, p0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$4;-><init>(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlBar:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$5;

    invoke-direct {v1, p0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$5;-><init>(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateMadeCodeCount()V
    .locals 0

    return-void
.end method

.method private updateScanCodeCount()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 1

    .line 65
    sget v0, Lcom/libs/cameras/R$id;->et_qr_code:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mEtQrCode:Landroid/widget/EditText;

    .line 66
    sget v0, Lcom/libs/cameras/R$id;->iv_create_qr_code:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mIvCreateQrCode:Landroid/widget/ImageView;

    .line 67
    sget v0, Lcom/libs/cameras/R$id;->iv_qr_code:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mIvQrCode:Landroid/widget/ImageView;

    .line 68
    sget v0, Lcom/libs/cameras/R$id;->activity_code_tool:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mActivityCodeTool:Landroid/widget/LinearLayout;

    .line 69
    sget v0, Lcom/libs/cameras/R$id;->ll_code:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlCode:Landroid/widget/LinearLayout;

    .line 70
    sget v0, Lcom/libs/cameras/R$id;->ll_qr_root:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlQrRoot:Landroid/widget/LinearLayout;

    .line 72
    sget v0, Lcom/libs/cameras/R$id;->nestedScrollView:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 74
    sget v0, Lcom/libs/cameras/R$id;->et_bar_code:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mEtBarCode:Landroid/widget/EditText;

    .line 75
    sget v0, Lcom/libs/cameras/R$id;->iv_create_bar_code:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mIvCreateBarCode:Landroid/widget/ImageView;

    .line 76
    sget v0, Lcom/libs/cameras/R$id;->iv_bar_code:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mIvBarCode:Landroid/widget/ImageView;

    .line 77
    sget v0, Lcom/libs/cameras/R$id;->ll_bar_code:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlBarCode:Landroid/widget/LinearLayout;

    .line 78
    sget v0, Lcom/libs/cameras/R$id;->ll_bar_root:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlBarRoot:Landroid/widget/LinearLayout;

    .line 79
    sget v0, Lcom/libs/cameras/R$id;->ll_scaner:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlScaner:Landroid/widget/LinearLayout;

    .line 80
    sget v0, Lcom/libs/cameras/R$id;->ll_qr:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlQr:Landroid/widget/LinearLayout;

    .line 81
    sget v0, Lcom/libs/cameras/R$id;->ll_bar:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mLlBar:Landroid/widget/LinearLayout;

    .line 83
    sget v0, Lcom/libs/cameras/R$id;->ticker_scan_count:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mRxTickerViewScan:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/libs/cameras/R$id;->ticker_made_count:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->mRxTickerViewMade:Landroid/widget/TextView;

    .line 88
    invoke-direct {p0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->updateMadeCodeCount()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget p1, Lcom/libs/cameras/R$layout;->activity_code_tool:I

    invoke-virtual {p0, p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->initView()V

    .line 54
    invoke-direct {p0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->initEvent()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    invoke-direct {p0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->updateScanCodeCount()V

    return-void
.end method
