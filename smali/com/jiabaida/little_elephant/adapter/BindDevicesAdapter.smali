.class public Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BindDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$OnDeviceClickListener;,
        Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$OnDeviceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mListData:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;)Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$OnDeviceClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mListener:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$OnDeviceClickListener;

    return-object p0
.end method


# virtual methods
.method public addDeviceList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->clear()V

    .line 42
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mListData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mListData:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mListData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mListData:Ljava/util/List;

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

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;I)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;

    .line 77
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;->access$000(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;->getMacAddr()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;->access$200(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d019b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;->access$200(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;->access$200(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07011d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;->access$200(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$1;-><init>(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a005c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    new-instance p2, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;-><init>(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnDeviceClickListener(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$OnDeviceClickListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->mListener:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$OnDeviceClickListener;

    return-void
.end method
