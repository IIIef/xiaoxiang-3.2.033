.class public Lcom/gyf/immersionbar/BarParams;
.super Ljava/lang/Object;
.source "BarParams.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public autoNavigationBarDarkModeAlpha:F

.field public autoNavigationBarDarkModeEnable:Z

.field public autoStatusBarDarkModeAlpha:F

.field public autoStatusBarDarkModeEnable:Z

.field public barEnable:Z

.field public barHide:Lcom/gyf/immersionbar/BarHide;

.field public contentAlpha:F

.field public contentColor:I

.field public contentColorTransform:I

.field public defaultNavigationBarColor:I

.field public fits:Z

.field public fitsLayoutOverlapEnable:Z

.field public flymeOSStatusBarFontColor:I

.field public flymeOSStatusBarFontTempColor:I

.field public fullScreen:Z

.field public hideNavigationBar:Z

.field public isSupportActionBar:Z

.field public keyboardEnable:Z

.field public keyboardMode:I

.field public navigationBarAlpha:F

.field public navigationBarColor:I

.field public navigationBarColorTransform:I

.field public navigationBarDarkIcon:Z

.field public navigationBarEnable:Z

.field public navigationBarTempAlpha:F

.field public navigationBarWithEMUI3Enable:Z

.field public navigationBarWithKitkatEnable:Z

.field onBarListener:Lcom/gyf/immersionbar/OnBarListener;

.field onKeyboardListener:Lcom/gyf/immersionbar/OnKeyboardListener;

.field onNavigationBarListener:Lcom/gyf/immersionbar/OnNavigationBarListener;

.field public statusBarAlpha:F

.field public statusBarColor:I

.field public statusBarColorEnabled:Z

.field public statusBarColorTransform:I

.field public statusBarDarkFont:Z

.field public statusBarTempAlpha:F

.field public statusBarView:Landroid/view/View;

.field public titleBarView:Landroid/view/View;

.field public viewAlpha:F

.field viewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/gyf/immersionbar/BarParams;->statusBarColor:I

    const/high16 v1, -0x1000000

    .line 29
    iput v1, p0, Lcom/gyf/immersionbar/BarParams;->navigationBarColor:I

    .line 35
    iput v1, p0, Lcom/gyf/immersionbar/BarParams;->defaultNavigationBarColor:I

    const/4 v2, 0x0

    .line 40
    iput v2, p0, Lcom/gyf/immersionbar/BarParams;->statusBarAlpha:F

    .line 43
    iput v2, p0, Lcom/gyf/immersionbar/BarParams;->statusBarTempAlpha:F

    .line 49
    iput v2, p0, Lcom/gyf/immersionbar/BarParams;->navigationBarAlpha:F

    .line 51
    iput v2, p0, Lcom/gyf/immersionbar/BarParams;->navigationBarTempAlpha:F

    .line 57
    iput-boolean v0, p0, Lcom/gyf/immersionbar/BarParams;->fullScreen:Z

    .line 62
    iput-boolean v0, p0, Lcom/gyf/immersionbar/BarParams;->hideNavigationBar:Z

    .line 67
    sget-object v3, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    iput-object v3, p0, Lcom/gyf/immersionbar/BarParams;->barHide:Lcom/gyf/immersionbar/BarHide;

    .line 72
    iput-boolean v0, p0, Lcom/gyf/immersionbar/BarParams;->statusBarDarkFont:Z

    .line 78
    iput-boolean v0, p0, Lcom/gyf/immersionbar/BarParams;->navigationBarDarkIcon:Z

    .line 83
    iput-boolean v0, p0, Lcom/gyf/immersionbar/BarParams;->autoStatusBarDarkModeEnable:Z

    .line 89
    iput-boolean v0, p0, Lcom/gyf/immersionbar/BarParams;->autoNavigationBarDarkModeEnable:Z

    .line 94
    iput v2, p0, Lcom/gyf/immersionbar/BarParams;->autoStatusBarDarkModeAlpha:F

    .line 100
    iput v2, p0, Lcom/gyf/immersionbar/BarParams;->autoNavigationBarDarkModeAlpha:F

    const/4 v3, 0x1

    .line 107
    iput-boolean v3, p0, Lcom/gyf/immersionbar/BarParams;->statusBarColorEnabled:Z

    .line 112
    iput v1, p0, Lcom/gyf/immersionbar/BarParams;->statusBarColorTransform:I

    .line 118
    iput v1, p0, Lcom/gyf/immersionbar/BarParams;->navigationBarColorTransform:I

    .line 124
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/gyf/immersionbar/BarParams;->viewMap:Ljava/util/Map;

    .line 128
    iput v2, p0, Lcom/gyf/immersionbar/BarParams;->viewAlpha:F

    .line 133
    iput v0, p0, Lcom/gyf/immersionbar/BarParams;->contentColor:I

    .line 138
    iput v1, p0, Lcom/gyf/immersionbar/BarParams;->contentColorTransform:I

    .line 143
    iput v2, p0, Lcom/gyf/immersionbar/BarParams;->contentAlpha:F

    .line 149
    iput-boolean v0, p0, Lcom/gyf/immersionbar/BarParams;->fits:Z

    .line 163
    iput-boolean v3, p0, Lcom/gyf/immersionbar/BarParams;->fitsLayoutOverlapEnable:Z

    .line 176
    iput-boolean v0, p0, Lcom/gyf/immersionbar/BarParams;->isSupportActionBar:Z

    .line 181
    iput-boolean v0, p0, Lcom/gyf/immersionbar/BarParams;->keyboardEnable:Z

    const/16 v0, 0x12

    .line 187
    iput v0, p0, Lcom/gyf/immersionbar/BarParams;->keyboardMode:I

    .line 193
    iput-boolean v3, p0, Lcom/gyf/immersionbar/BarParams;->navigationBarEnable:Z

    .line 198
    iput-boolean v3, p0, Lcom/gyf/immersionbar/BarParams;->navigationBarWithKitkatEnable:Z

    .line 203
    iput-boolean v3, p0, Lcom/gyf/immersionbar/BarParams;->navigationBarWithEMUI3Enable:Z

    .line 208
    iput-boolean v3, p0, Lcom/gyf/immersionbar/BarParams;->barEnable:Z

    return-void
.end method


# virtual methods
.method protected clone()Lcom/gyf/immersionbar/BarParams;
    .locals 1

    .line 229
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gyf/immersionbar/BarParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/gyf/immersionbar/BarParams;->clone()Lcom/gyf/immersionbar/BarParams;

    move-result-object v0

    return-object v0
.end method
