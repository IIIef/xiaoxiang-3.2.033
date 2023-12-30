.class Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;
.super Ljava/lang/Object;
.source "ControlFragment.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->showAdjustCurrent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DismissListener(Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public leftBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public rightBottomViewClick(Landroid/app/Dialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 312
    invoke-static {p2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->StrTransFloat(Ljava/lang/String;)F

    move-result p2

    .line 314
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const/16 v0, 0x140

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(FII)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    .line 319
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    new-instance p3, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    const/16 v0, 0xad

    invoke-direct {p3, v0}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;-><init>(C)V

    invoke-static {p2, p3}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$302(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;)Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    .line 320
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$300(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    move-result-object p2

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->setContent([B)V

    .line 321
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$300(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    move-result-object p2

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$100(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 322
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$400(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 323
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->current:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, p3

    if-lez v0, :cond_1

    .line 324
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    const/16 v2, 0xae

    invoke-direct {v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;-><init>(C)V

    invoke-static {p3, v0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$302(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;)Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    .line 325
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$300(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    move-result-object p3

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-static {p2}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->setContent([B)V

    .line 326
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$300(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    move-result-object p2

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$100(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 327
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$400(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 328
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->current:F

    cmpg-float p3, v0, p3

    if-gez p3, :cond_2

    .line 329
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    const/16 v2, 0xaf

    invoke-direct {v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;-><init>(C)V

    invoke-static {p3, v0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$302(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;)Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    .line 330
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$300(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    move-result-object p3

    mul-float p2, p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->setContent([B)V

    .line 331
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$300(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    move-result-object p2

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$100(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 332
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$400(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 334
    :cond_2
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->hideLoading()V

    .line 335
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0d0193

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->showDefaultMsg(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_4

    .line 339
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 342
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0d0189

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "0~320A"

    aput-object v0, p3, v1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->showDefaultMsg(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
