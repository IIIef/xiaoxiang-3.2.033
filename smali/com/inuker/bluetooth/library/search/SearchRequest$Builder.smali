.class public Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/search/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/search/SearchTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;->tasks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/inuker/bluetooth/library/search/SearchRequest;
    .locals 2

    .line 97
    new-instance v0, Lcom/inuker/bluetooth/library/search/SearchRequest;

    invoke-direct {v0}, Lcom/inuker/bluetooth/library/search/SearchRequest;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;->tasks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/inuker/bluetooth/library/search/SearchRequest;->setTasks(Ljava/util/List;)V

    return-object v0
.end method

.method public searchBluetoothClassicDevice(I)Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;
    .locals 2

    .line 82
    new-instance v0, Lcom/inuker/bluetooth/library/search/SearchTask;

    invoke-direct {v0}, Lcom/inuker/bluetooth/library/search/SearchTask;-><init>()V

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Lcom/inuker/bluetooth/library/search/SearchTask;->setSearchType(I)V

    .line 84
    invoke-virtual {v0, p1}, Lcom/inuker/bluetooth/library/search/SearchTask;->setSearchDuration(I)V

    .line 85
    iget-object p1, p0, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;->tasks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public searchBluetoothClassicDevice(II)Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;->searchBluetoothClassicDevice(I)Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public searchBluetoothLeDevice(I)Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;
    .locals 2

    .line 65
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->isBleSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/inuker/bluetooth/library/search/SearchTask;

    invoke-direct {v0}, Lcom/inuker/bluetooth/library/search/SearchTask;-><init>()V

    const/4 v1, 0x2

    .line 67
    invoke-virtual {v0, v1}, Lcom/inuker/bluetooth/library/search/SearchTask;->setSearchType(I)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/inuker/bluetooth/library/search/SearchTask;->setSearchDuration(I)V

    .line 69
    iget-object p1, p0, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;->tasks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public searchBluetoothLeDevice(II)Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;->searchBluetoothLeDevice(I)Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
