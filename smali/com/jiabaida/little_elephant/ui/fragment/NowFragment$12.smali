.class Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;
.super Ljava/lang/Object;
.source "NowFragment.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V
    .locals 0

    .line 1183
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 1236
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->BletimeHandler:Landroid/os/Handler;

    const/16 p2, 0x2711

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 1186
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->totalVoltage:F

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$1002(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;F)F

    .line 1187
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p1

    iget p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->current:F

    sput p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->current:F

    .line 1188
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->remaindPower:F

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$1102(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;F)F

    .line 1189
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p1

    iget p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->learnCapacity:F

    sput p1, Lcom/jiabaida/little_elephant/util/BleUtils;->learnCapacity:F

    .line 1190
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p1

    iget p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->serial:I

    sput p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    .line 1191
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->nominalPower:F

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$1202(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;F)F

    .line 1193
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->cycleTimes:I

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$1302(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;I)I

    .line 1197
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionStateIndex:I

    iput p2, p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->equilibriumState:I

    .line 1201
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->balanceState:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$1402(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;F)F

    .line 1203
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->RSOC:I

    iput p2, p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->RSOC:I

    .line 1205
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->BletimeHandler:Landroid/os/Handler;

    const/16 p2, 0x2711

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1207
    :try_start_0
    sget-boolean p1, Lcom/jiabaida/little_elephant/util/BleUtils;->isCheckOta:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1208
    sput-boolean p1, Lcom/jiabaida/little_elephant/util/BleUtils;->isCheckOta:Z

    .line 1210
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1211
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    .line 1212
    sget-object p2, Lcom/jiabaida/little_elephant/util/BleUtils;->macStart:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1213
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->getICType()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1228
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u83b7\u53d6\u7248\u672cota_error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "xzx"

    invoke-static {p2, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
