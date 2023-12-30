.class public Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ScanBleDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;,
        Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private bleSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listLocalBle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/db/BleDeviceListBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->bleSet:Ljava/util/HashSet;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->bleSet:Ljava/util/HashSet;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    .line 60
    iput-object p2, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListener:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;

    return-object p0
.end method


# virtual methods
.method public addDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 6

    .line 90
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->removeDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 92
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    const-string v1, "---scan-ad:"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 93
    :goto_0
    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">>===>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "____"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    invoke-virtual {v5}, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->getBleMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :try_start_0
    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->getBleMacAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    .line 98
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->getBleMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    .line 100
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->getBleMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=======>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "====error===>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 110
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ">>>>=======>>>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    invoke-direct {v1, v3, p1}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;-><init>(ZLcom/clj/fastble/data/BleDevice;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 113
    iget-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->bleSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->setData(Ljava/util/HashSet;)V

    return-void
.end method

.method public addDeviceList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->clear()V

    .line 71
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearConnectedDevice()V
    .locals 3

    const/4 v0, 0x0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    .line 128
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getBleListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    return-object v0
.end method

.method public getBleSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->bleSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-jiabaida-little_elephant-adapter-ScanBleDevicesAdapter(Lcom/clj/fastble/data/BleDevice;ILandroid/view/View;)V
    .locals 0

    .line 224
    iget-object p3, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListener:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;

    if-eqz p3, :cond_0

    .line 225
    invoke-interface {p3, p1, p2}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;->appKeyCallback(Lcom/clj/fastble/data/BleDevice;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-jiabaida-little_elephant-adapter-ScanBleDevicesAdapter(ZLcom/clj/fastble/data/BleDevice;ILandroid/view/View;)V
    .locals 0

    .line 233
    check-cast p4, Landroid/widget/TextView;

    .line 234
    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 235
    iget-object p4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListener:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;

    if-eqz p4, :cond_1

    if-nez p1, :cond_0

    .line 238
    invoke-interface {p4, p2, p3}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;->onConnect(Lcom/clj/fastble/data/BleDevice;I)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-interface {p4, p2, p3}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;->onDisConnect(Lcom/clj/fastble/data/BleDevice;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyLocalDevice()V
    .locals 4

    const-string v0, "---db-mac:"

    const-string v1, "\u5237\u65b0"

    .line 80
    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 82
    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jiabaida/little_elephant/db/BleDeviceController;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/db/BleDeviceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/db/BleDeviceController;->searchAll()Ljava/util/List;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->getBleMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->listLocalBle:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->getBleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;I)V
    .locals 7

    .line 162
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    .line 164
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$000(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 168
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 171
    :goto_2
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$200(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->isCheckState()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$200(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/CheckBox;

    move-result-object v3

    new-instance v4, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$1;

    invoke-direct {v4, p0, p2, v0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$1;-><init>(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;ILcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    iget-object v3, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_8

    if-nez v1, :cond_3

    .line 186
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$400(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0144

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$400(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$400(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07011c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 191
    :cond_3
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$400(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0143

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v3, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v3

    const-string v4, "BluetoothName"

    invoke-virtual {v3, v4}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 194
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$000(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_4
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$400(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$400(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07011d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 200
    :goto_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getRssi()I

    move-result v4

    const/16 v5, -0x41

    if-lt v4, v5, :cond_5

    .line 202
    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0d018d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 203
    :cond_5
    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getRssi()I

    move-result v4

    const/16 v6, -0x4b

    if-lt v4, v6, :cond_6

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getRssi()I

    move-result v4

    if-ge v4, v5, :cond_6

    .line 204
    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0d018c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 205
    :cond_6
    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getRssi()I

    move-result v4

    const/16 v5, -0x55

    if-lt v4, v5, :cond_7

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getRssi()I

    move-result v4

    if-ge v4, v6, :cond_7

    .line 206
    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0d018f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 208
    :cond_7
    iget-object v4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0d018e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    :goto_4
    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getRssi()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 211
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$500(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_8
    iget-object v3, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->isShowKeyState()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_9

    .line 215
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$600(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$400(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 219
    :cond_9
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$600(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$400(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    :goto_5
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$600(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p2}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;Lcom/clj/fastble/data/BleDevice;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->access$400(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v2, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;ZLcom/clj/fastble/data/BleDevice;I)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;
    .locals 2

    .line 153
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a005f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 155
    new-instance p2, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;-><init>(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public removeDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 3

    const/4 v0, 0x0

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    .line 119
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setData(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->bleSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 250
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->bleSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 254
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    .line 255
    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 256
    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->setShowKeyState(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 258
    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->setShowKeyState(Z)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnDeviceClickListener(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->mListener:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;

    return-void
.end method
