.class Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$3;
.super Ljava/lang/Object;
.source "ScanBleDevicesActivity.java"

# interfaces
.implements Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->goScanCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/google/zxing/Result;)V
    .locals 6

    .line 429
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p2

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "---"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "xiezhixian"

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 432
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 433
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    const/4 v1, 0x2

    .line 434
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    .line 435
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    .line 436
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    .line 437
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    .line 438
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-virtual {v0, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$902(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 443
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    return-void
.end method
