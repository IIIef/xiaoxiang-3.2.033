.class Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;
.super Landroid/os/Handler;
.source "ElectricSettingsOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 192
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, ""

    if-eq v0, v1, :cond_6

    const/16 p1, 0x7918

    if-eq v0, p1, :cond_5

    const-string p1, "0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 350
    :pswitch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 352
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v5, 0x39

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, "SC_release_time"

    const-string v9, "S"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4202(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 355
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 356
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 359
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 360
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 362
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 331
    :pswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 332
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 334
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 335
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 337
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 338
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 340
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 341
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 342
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 344
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 345
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 346
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 347
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_4

    .line 310
    :pswitch_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->isRelativeEntity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getRelativeEntity()Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 315
    iget-object v1, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 316
    iput-object p1, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    .line 318
    :cond_1
    iget-object p1, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 319
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 320
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_1

    .line 322
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 323
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 324
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 325
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 327
    :goto_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 300
    :pswitch_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 301
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 302
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 303
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 304
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 306
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 291
    :pswitch_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 292
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 293
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    div-int/lit8 p1, p1, 0xa

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(I)V

    .line 294
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 295
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 296
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 269
    :pswitch_5
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->isRelativeEntity()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getRelativeEntity()Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 274
    iget-object v1, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 275
    iput-object p1, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    .line 277
    :cond_3
    iget-object p1, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 278
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 279
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_2

    .line 281
    :cond_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 282
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 283
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 284
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 286
    :goto_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 260
    :pswitch_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 261
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 262
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 263
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 264
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 265
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 251
    :pswitch_7
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 252
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 253
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    div-int/lit8 p1, p1, 0xa

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(I)V

    .line 254
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 255
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 256
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 366
    :cond_5
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_4

    .line 195
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 196
    iget-char v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmd:C

    const/16 v4, 0x28

    if-eq v0, v4, :cond_f

    const/16 v4, 0x29

    if-eq v0, v4, :cond_e

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_d

    const/16 v4, 0x38

    const-string v5, "xiezhixian"

    if-eq v0, v4, :cond_a

    const/16 v1, 0x39

    if-eq v0, v1, :cond_9

    const/16 v1, 0x3e

    const/4 v2, 0x5

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_7

    goto/16 :goto_4

    .line 209
    :cond_7
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getResponseSrcDatas()[B

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 201
    :cond_8
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getResponseSrcDatas()[B

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 239
    :cond_9
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getResponseSrcDatas()[B

    move-result-object v0

    .line 241
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- 0x39 \u6307\u4ee4\u53cd\u9988 : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 214
    :cond_a
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_b

    .line 215
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 217
    :cond_b
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_c

    .line 218
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    sget-object v1, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDISCurrentArray_1:[I

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v2

    iget v2, v2, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-static {v0, v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;[IF)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$802(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;Ljava/util/List;)Ljava/util/List;

    .line 219
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    sget-object v1, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDSGCurrentArray_1:[I

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v2

    iget v2, v2, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-static {v0, v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;[IF)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1102(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 222
    :cond_c
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    sget-object v1, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDISCurrentArray_0:[I

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v2

    iget v2, v2, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-static {v0, v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;[IF)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$802(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;Ljava/util/List;)Ljava/util/List;

    .line 223
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    sget-object v1, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDSGCurrentArray_0:[I

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v2

    iget v2, v2, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-static {v0, v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;[IF)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1102(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;Ljava/util/List;)Ljava/util/List;

    .line 225
    :goto_3
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;I)I

    .line 226
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1402(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;I)I

    .line 227
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1602(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;I)I

    .line 228
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1802(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;I)I

    .line 230
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    const-string v2, ".0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getResponseSrcDatas()[B

    move-result-object v0

    .line 235
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- 0x38 \u6307\u4ee4\u53cd\u9988 : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 246
    :cond_d
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2502(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;F)F

    goto :goto_4

    .line 206
    :cond_e
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 198
    :cond_f
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d01
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
