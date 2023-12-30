.class Lcom/libs/qrcodecamera/activity/ActivityScanerCode$1;
.super Ljava/lang/Object;
.source "ActivityScanerCode.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;


# direct methods
.method constructor <init>(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;

    invoke-static {v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->access$000(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->access$002(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;Z)Z

    .line 214
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;

    invoke-static {v0, p1}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->access$100(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->access$002(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;Z)Z

    return-void
.end method
