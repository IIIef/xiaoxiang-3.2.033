.class Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothSearchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothClassicSearcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothSearchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;


# direct methods
.method private constructor <init>(Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothSearchReceiver;->this$0:Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$1;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothSearchReceiver;-><init>(Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 93
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const/16 v0, -0x8000

    const-string v1, "android.bluetooth.device.extra.RSSI"

    .line 94
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result p2

    .line 97
    new-instance v0, Lcom/inuker/bluetooth/library/search/SearchResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/inuker/bluetooth/library/search/SearchResult;-><init>(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 100
    iget-object p1, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothSearchReceiver;->this$0:Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;

    invoke-static {p1, v0}, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->access$300(Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;Lcom/inuker/bluetooth/library/search/SearchResult;)V

    :cond_0
    return-void
.end method
