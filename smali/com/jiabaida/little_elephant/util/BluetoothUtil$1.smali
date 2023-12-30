.class Lcom/jiabaida/little_elephant/util/BluetoothUtil$1;
.super Lcom/clj/fastble/callback/BleNotifyCallback;
.source "BluetoothUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/util/BluetoothUtil;->openNotify(Lcom/clj/fastble/data/BleDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$1;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleNotifyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged([B)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCharacteristicChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothUtil"

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/IdsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$1;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readData([B)V

    return-void
.end method

.method public onNotifyFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 1

    const-string p1, "--BleActivity"

    const-string v0, "\u6253\u5f00\u901a\u77e5\u64cd\u4f5c\u5931\u8d25: "

    .line 214
    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNotifySuccess()V
    .locals 2

    const-string v0, "xzx"

    const-string v1, "\u6253\u5f00\u901a\u77e5\u64cd\u4f5c\u6210\u529f: "

    .line 207
    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
