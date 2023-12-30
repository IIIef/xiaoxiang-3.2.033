.class public Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "ElectricSettingsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.ElectricSettingsActivity"


# instance fields
.field private Detectionresistance:F

.field private InputPram:Z

.field private OCDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private SCEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private WriteLine:[B

.field private chgdsgOCEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private currentResistanceCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

.field private icTypeResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private isDouble:Z

.field private ivTopBack:Landroid/widget/ImageView;

.field listSecondary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field listSecondaryDelay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field listShortDelay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field listShortValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field private llyShortDelay:Landroid/widget/LinearLayout;

.field private llyShortProtection:Landroid/widget/LinearLayout;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private llyTwoElectric:Landroid/widget/LinearLayout;

.field private mEdCharCurrentDelay:Landroid/widget/EditText;

.field private mEdCharCurrentProtection:Landroid/widget/EditText;

.field private mEdCharCurrentRecoveryDelay:Landroid/widget/EditText;

.field private mEdDischargeDelay:Landroid/widget/EditText;

.field private mEdDischargeProtection:Landroid/widget/EditText;

.field private mEdDischargeRecoveryDelay:Landroid/widget/EditText;

.field private mEdShortRecoveryDelay:Landroid/widget/EditText;

.field private mLlySecondDelay:Landroid/widget/LinearLayout;

.field private mLlySecondProtection:Landroid/widget/LinearLayout;

.field private mTvCharCurrentDelay:Landroid/widget/TextView;

.field private mTvCharCurrentProtection:Landroid/widget/TextView;

.field private mTvCharCurrentRecoveryDelay:Landroid/widget/TextView;

.field private mTvDischargeDelay:Landroid/widget/TextView;

.field private mTvDischargeProtection:Landroid/widget/TextView;

.field private mTvDischargeRecoveryDelay:Landroid/widget/TextView;

.field private mTvSecondaryDelay:Landroid/widget/TextView;

.field private mTvSecondaryprotection:Landroid/widget/TextView;

.field private mTvSecondaryprotectionvalue:Landroid/widget/Switch;

.field private mTvSetCharCurrentDelay:Landroid/widget/TextView;

.field private mTvSetCharCurrentProtection:Landroid/widget/TextView;

.field private mTvSetCharCurrentRecoveryDelay:Landroid/widget/TextView;

.field private mTvSetDischargeDelay:Landroid/widget/TextView;

.field private mTvSetDischargeProtection:Landroid/widget/TextView;

.field private mTvSetDischargeRecoveryDelay:Landroid/widget/TextView;

.field private mTvShortRecoveryDelay:Landroid/widget/TextView;

.field private mTvShortprotection:Landroid/widget/TextView;

.field private mTvShortprotectionDelay:Landroid/widget/TextView;

.field private ocIndex:I

.field private ocdelayed:I

.field private paramProcess:I

.field private paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private scDelayedIndex:I

.field private scIndex:I

.field timeHandler:Landroid/os/Handler;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;

.field private tvTwoElectric:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->isDouble:Z

    new-array v0, v0, [B

    .line 110
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->WriteLine:[B

    const/4 v0, 0x3

    .line 112
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramProcess:I

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->Detectionresistance:F

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listShortValue:Ljava/util/List;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listShortDelay:Ljava/util/List;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listSecondary:Ljava/util/List;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listSecondaryDelay:Ljava/util/List;

    .line 281
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->timeHandler:Landroid/os/Handler;

    .line 813
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 833
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 850
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 866
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 880
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$8;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private RefreshList(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 477
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 478
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->getItemid()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 479
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->setItemSelect(Z)V

    goto :goto_1

    .line 481
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {v2, v0}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->setItemSelect(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private SetListSecondaryDelay(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 448
    :goto_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 450
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listSecondaryDelay:Ljava/util/List;

    new-instance v3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v4, v4, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v6, v4, v1, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listSecondaryDelay:Ljava/util/List;

    new-instance v3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v4, v4, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v4, v1, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listSecondaryDelay:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->RefreshList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private SetListSecondaryValue(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 463
    :goto_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 465
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listSecondary:Ljava/util/List;

    new-instance v3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v4, v4, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    aget v4, v4, v1

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v6, v4, v1, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listSecondary:Ljava/util/List;

    new-instance v3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v4, v4, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    aget v4, v4, v1

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v4, v1, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listSecondary:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->RefreshList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private SetListShortDelay(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 414
    :goto_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 416
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listShortDelay:Ljava/util/List;

    new-instance v3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v4, v4, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v6, v4, v1, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listShortDelay:Ljava/util/List;

    new-instance v3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v4, v4, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v4, v1, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listShortDelay:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->RefreshList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private SetListShortValue(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 431
    :goto_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 433
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listShortValue:Ljava/util/List;

    new-instance v3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v4, v4, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    aget v4, v4, v1

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v6, v4, v1, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listShortValue:Ljava/util/List;

    new-instance v3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v4, v4, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    aget v4, v4, v1

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v4, v1, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listShortValue:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->RefreshList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private ShowDialog(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 726
    new-instance v0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 727
    new-instance p2, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    invoke-direct {p2, p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->setBottomItemListener(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;)V

    .line 798
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->show()V

    return-void
.end method

.method private UpdateElectric()V
    .locals 3

    .line 898
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "electricityParam"

    .line 900
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->toElectricJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 901
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 903
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->chgdsgOCEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvCharCurrentProtection:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scIndex:I

    return p0
.end method

.method static synthetic access$1002(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ocdelayed:I

    return p0
.end method

.method static synthetic access$1102(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ocdelayed:I

    return p1
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ocIndex:I

    return p0
.end method

.method static synthetic access$1202(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ocIndex:I

    return p1
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)Ljava/util/List;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->SetListSecondaryValue(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)Ljava/util/List;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->SetListSecondaryDelay(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)Ljava/util/List;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->SetListShortDelay(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)Ljava/util/List;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->SetListShortValue(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/Switch;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSecondaryprotectionvalue:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSecondaryprotection:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSecondaryDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvDischargeProtection:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvShortprotection:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvShortprotectionDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvShortRecoveryDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->UpdateElectric()V

    return-void
.end method

.method static synthetic access$2400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->OCDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvCharCurrentDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvCharCurrentRecoveryDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvDischargeDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvDischargeRecoveryDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->Detectionresistance:F

    return p0
.end method

.method static synthetic access$3000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->Detectionresistance:F

    return p1
.end method

.method static synthetic access$3100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$3200()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->currentResistanceCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->SCEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->llyTwoElectric:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->isDouble:Z

    return p0
.end method

.method static synthetic access$802(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->isDouble:Z

    return p1
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scDelayedIndex:I

    return p0
.end method

.method static synthetic access$902(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scDelayedIndex:I

    return p1
.end method

.method private checkProcess()V
    .locals 1

    .line 806
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 808
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->UpdateElectric()V

    .line 809
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->hideLoading()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0046

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 216
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showLoading()V

    .line 219
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    .line 220
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 221
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 223
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x1c

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->currentResistanceCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 224
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 225
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->currentResistanceCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 228
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x18

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->chgdsgOCEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 229
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 230
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->chgdsgOCEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 232
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x34

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->OCDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 233
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 234
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->OCDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 236
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x28

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->SCEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 237
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 238
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->SCEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 137
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 138
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 139
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 140
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 141
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f080137

    .line 142
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    .line 143
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 144
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08013a

    .line 150
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->llyTwoElectric:Landroid/widget/LinearLayout;

    const p1, 0x7f0802a3

    .line 151
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->tvTwoElectric:Landroid/widget/TextView;

    const p1, 0x7f080136

    .line 153
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->llyShortProtection:Landroid/widget/LinearLayout;

    const p1, 0x7f080135

    .line 154
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->llyShortDelay:Landroid/widget/LinearLayout;

    const p1, 0x7f080133

    .line 155
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mLlySecondProtection:Landroid/widget/LinearLayout;

    const p1, 0x7f080132

    .line 156
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mLlySecondDelay:Landroid/widget/LinearLayout;

    const p1, 0x7f0801d8

    .line 159
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvCharCurrentProtection:Landroid/widget/TextView;

    const p1, 0x7f0801d7

    .line 160
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvCharCurrentDelay:Landroid/widget/TextView;

    const p1, 0x7f0801d9

    .line 161
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvCharCurrentRecoveryDelay:Landroid/widget/TextView;

    const p1, 0x7f0801e9

    .line 162
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvDischargeProtection:Landroid/widget/TextView;

    const p1, 0x7f0801e2

    .line 163
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvDischargeDelay:Landroid/widget/TextView;

    const p1, 0x7f0801ea

    .line 164
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvDischargeRecoveryDelay:Landroid/widget/TextView;

    const p1, 0x7f080201

    .line 165
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSecondaryprotectionvalue:Landroid/widget/Switch;

    const p1, 0x7f080200

    .line 167
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSecondaryprotection:Landroid/widget/TextView;

    const p1, 0x7f0801ff

    .line 168
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSecondaryDelay:Landroid/widget/TextView;

    const p1, 0x7f080205

    .line 169
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvShortprotection:Landroid/widget/TextView;

    const p1, 0x7f080206

    .line 170
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvShortprotectionDelay:Landroid/widget/TextView;

    const p1, 0x7f080204

    .line 171
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvShortRecoveryDelay:Landroid/widget/TextView;

    const p1, 0x7f080072

    .line 174
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentProtection:Landroid/widget/EditText;

    const p1, 0x7f080071

    .line 175
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentDelay:Landroid/widget/EditText;

    const p1, 0x7f080073

    .line 176
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentRecoveryDelay:Landroid/widget/EditText;

    const p1, 0x7f080083

    .line 177
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeProtection:Landroid/widget/EditText;

    const p1, 0x7f08007c

    .line 178
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeDelay:Landroid/widget/EditText;

    const p1, 0x7f080084

    .line 179
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeRecoveryDelay:Landroid/widget/EditText;

    const p1, 0x7f080097

    .line 180
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdShortRecoveryDelay:Landroid/widget/EditText;

    const p1, 0x7f080265

    .line 182
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSetCharCurrentProtection:Landroid/widget/TextView;

    const p1, 0x7f080264

    .line 183
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSetCharCurrentDelay:Landroid/widget/TextView;

    const p1, 0x7f080266

    .line 184
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSetCharCurrentRecoveryDelay:Landroid/widget/TextView;

    const p1, 0x7f080276

    .line 185
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSetDischargeProtection:Landroid/widget/TextView;

    const p1, 0x7f08026f

    .line 186
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSetDischargeDelay:Landroid/widget/TextView;

    const p1, 0x7f080277

    .line 187
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSetDischargeRecoveryDelay:Landroid/widget/TextView;

    .line 189
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 190
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 192
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 193
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 194
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 196
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 197
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    .line 198
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    return-void
.end method

.method public onClickElectric(Landroid/view/View;)V
    .locals 8

    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0d0189

    const v1, 0x7f0d018a

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x2

    const v5, 0x7f0d016e

    const/4 v6, 0x1

    const-string v7, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 696
    :sswitch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdShortRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 697
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdShortRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 698
    invoke-static {p1, v2, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showLoading()V

    .line 702
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x2b

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v6, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 703
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 706
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvShortRecoveryDelay:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdShortRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdShortRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 709
    :cond_0
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 710
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdShortRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 713
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->hideLoading()V

    .line 714
    invoke-virtual {p0, v5}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 672
    :sswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 673
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 674
    invoke-static {p1, v2, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showLoading()V

    const/16 v0, 0x37

    .line 677
    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->getWriteBLECommand(BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->WriteLine:[B

    .line 678
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v1, v0, v6, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 679
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 681
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvDischargeRecoveryDelay:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 684
    :cond_2
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 685
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 688
    :cond_3
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->hideLoading()V

    .line 689
    invoke-virtual {p0, v5}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 624
    :sswitch_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeProtection:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 625
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeProtection:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->StrTransInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, -0x2710

    const v2, -0x4ffb0

    .line 626
    invoke-static {p1, v1, v2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->InputPram:Z

    if-eqz v1, :cond_4

    .line 628
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showLoading()V

    .line 629
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x19

    div-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v6, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 630
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 632
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvDischargeProtection:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeProtection:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeProtection:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 635
    :cond_4
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "-10000~-327600"

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 636
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeProtection:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 639
    :cond_5
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->hideLoading()V

    .line 640
    invoke-virtual {p0, v5}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 647
    :sswitch_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 648
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 649
    invoke-static {p1, v2, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_6

    .line 651
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showLoading()V

    const/16 v0, 0x36

    .line 652
    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->getWriteBLECommand(BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->WriteLine:[B

    .line 653
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v1, v0, v6, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 654
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 657
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvDischargeDelay:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeDelay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 660
    :cond_6
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 661
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdDischargeDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 664
    :cond_7
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->hideLoading()V

    .line 665
    invoke-virtual {p0, v5}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 600
    :sswitch_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 601
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 602
    invoke-static {p1, v2, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_8

    .line 604
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showLoading()V

    const/16 v0, 0x35

    .line 605
    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->getWriteBLECommand(BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->WriteLine:[B

    .line 606
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v1, v0, v6, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 607
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 610
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvCharCurrentRecoveryDelay:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 613
    :cond_8
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 614
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 617
    :cond_9
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->hideLoading()V

    .line 618
    invoke-virtual {p0, v5}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 550
    :sswitch_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentProtection:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 551
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentProtection:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const v1, 0x4ffb0

    const/16 v2, 0x2710

    .line 552
    invoke-static {p1, v1, v2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->InputPram:Z

    if-eqz v1, :cond_a

    .line 554
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showLoading()V

    .line 555
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x18

    div-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v6, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 556
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 559
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvCharCurrentProtection:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentProtection:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentProtection:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 563
    :cond_a
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "10000~327600"

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 564
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentProtection:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 567
    :cond_b
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->hideLoading()V

    .line 568
    invoke-virtual {p0, v5}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 575
    :sswitch_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 576
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 577
    invoke-static {p1, v2, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_c

    .line 579
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showLoading()V

    .line 580
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x34

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v6, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 581
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 584
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvCharCurrentDelay:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentDelay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 587
    :cond_c
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 588
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mEdCharCurrentDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 592
    :cond_d
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->hideLoading()V

    .line 593
    invoke-virtual {p0, v5}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 506
    :sswitch_7
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSecondaryprotectionvalue:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->isDouble:Z

    .line 508
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->Detectionresistance:F

    invoke-virtual {v0, v1, p1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->setCurrentInfo(FZ)V

    .line 510
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSecondaryprotection:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ocIndex:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvSecondaryDelay:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ocdelayed:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvShortprotection:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scIndex:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvShortprotectionDelay:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scDelayedIndex:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scDelayedIndex:I

    const/16 v0, 0x29

    if-nez p1, :cond_f

    .line 519
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    iget-boolean v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->isDouble:Z

    if-eqz v2, :cond_e

    const/16 v3, 0xa0

    :cond_e
    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scIndex:I

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr p1, v2

    or-int/2addr p1, v3

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v1, v0, v6, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    goto :goto_0

    :cond_f
    if-ne p1, v6, :cond_11

    .line 521
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    iget-boolean v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->isDouble:Z

    if-eqz v2, :cond_10

    const/16 v3, 0xa1

    :cond_10
    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scIndex:I

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr p1, v2

    or-int/2addr p1, v3

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v1, v0, v6, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    goto :goto_0

    :cond_11
    if-ne p1, v4, :cond_13

    .line 524
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    iget-boolean v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->isDouble:Z

    if-eqz v2, :cond_12

    const/16 v3, 0xa2

    :cond_12
    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scIndex:I

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr p1, v2

    or-int/2addr p1, v3

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v1, v0, v6, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    goto :goto_0

    :cond_13
    const/4 v1, 0x3

    if-ne p1, v1, :cond_15

    .line 527
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    iget-boolean v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->isDouble:Z

    if-eqz v2, :cond_14

    const/16 v3, 0xa3

    :cond_14
    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scIndex:I

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr p1, v2

    or-int/2addr p1, v3

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v1, v0, v6, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 529
    :cond_15
    :goto_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    goto :goto_1

    :sswitch_8
    const p1, 0x7f0d0119

    .line 535
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listShortValue:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ShowDialog(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :sswitch_9
    const p1, 0x7f0d011a

    .line 538
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listShortDelay:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ShowDialog(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :sswitch_a
    const p1, 0x7f0d0114

    .line 542
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listSecondary:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ShowDialog(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :sswitch_b
    const p1, 0x7f0d0113

    .line 545
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->listSecondaryDelay:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ShowDialog(Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080132 -> :sswitch_b
        0x7f080133 -> :sswitch_a
        0x7f080135 -> :sswitch_9
        0x7f080136 -> :sswitch_8
        0x7f080201 -> :sswitch_7
        0x7f080264 -> :sswitch_6
        0x7f080265 -> :sswitch_5
        0x7f080266 -> :sswitch_4
        0x7f08026f -> :sswitch_3
        0x7f080276 -> :sswitch_2
        0x7f080277 -> :sswitch_1
        0x7f08028a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 404
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 405
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 406
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public toElectricJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 909
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 910
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvCharCurrentProtection:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "occhg"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 911
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvCharCurrentDelay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "chargeOvercurrentDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 912
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvCharCurrentRecoveryDelay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "chargeOvercurrentRecoverDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 913
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvDischargeProtection:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "dischargeOvercurrentProtect"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 914
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvDischargeDelay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "dischargeOvercurrentDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 915
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvDischargeRecoveryDelay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "dischargeOvercurrentRecoverDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 916
    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->isDouble:Z

    const-string v2, "level2OvercurrentProtectV"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 917
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ocIndex:I

    const-string v2, "level2OvercurrentProtect"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 918
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ocIndex:I

    const-string v2, "level2OvercurrentProtectVNo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 919
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ocIndex:I

    const-string v2, "level2OvercurrentProtectNo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 920
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ocdelayed:I

    const-string v2, "leve2OvercurrentDelay"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 921
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->ocdelayed:I

    const-string v2, "leve2OvercurrentDelayNo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 922
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scIndex:I

    const-string v2, "shortcircuiProtect"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 923
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scIndex:I

    const-string v2, "shortcircuiProtectNo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 924
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scDelayedIndex:I

    const-string v2, "shortcircuiProtectDelay"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 925
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->scDelayedIndex:I

    const-string v2, "shortcircuiProtectDelayNo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 927
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->mTvShortRecoveryDelay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "shortcircuiProtectRecoverDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
