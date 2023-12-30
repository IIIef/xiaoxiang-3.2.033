.class Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothClassicSearcherHolder;
.super Ljava/lang/Object;
.source "BluetoothClassicSearcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothClassicSearcherHolder"
.end annotation


# static fields
.field private static instance:Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;-><init>(Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$1;)V

    sput-object v0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothClassicSearcherHolder;->instance:Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;
    .locals 1

    .line 29
    sget-object v0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothClassicSearcherHolder;->instance:Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;

    return-object v0
.end method
