.class public Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ParamsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$OnItemClickListener;,
        Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$OnItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ParamsItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ParamsItemBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->mListData:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;)Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$OnItemClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->listener:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->mListData:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->mListData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;I)V
    .locals 3

    .line 62
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;->access$000(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->mListData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getIconImg()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->mListData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;->access$400(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$1;-><init>(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a0069

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    new-instance p2, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;-><init>(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ParamsItemBean;",
            ">;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->mListData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->mListData:Ljava/util/List;

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$OnItemClickListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->listener:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$OnItemClickListener;

    return-void
.end method
