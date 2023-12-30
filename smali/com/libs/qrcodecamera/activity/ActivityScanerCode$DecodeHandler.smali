.class final Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeHandler;
.super Landroid/os/Handler;
.source "ActivityScanerCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/libs/qrcodecamera/activity/ActivityScanerCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DecodeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;


# direct methods
.method constructor <init>(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeHandler;->this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 542
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/libs/cameras/R$id;->decode:I

    if-ne v0, v1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeHandler;->this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, p1}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->access$200(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;[BII)V

    goto :goto_0

    .line 544
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lcom/libs/cameras/R$id;->quit:I

    if-ne p1, v0, :cond_1

    .line 545
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_1
    :goto_0
    return-void
.end method
