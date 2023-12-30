.class public Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VoltageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$OnItemClickListener;,
        Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$OnItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mListData:Ljava/util/List;

    .line 39
    iput-object p2, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;)Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$OnItemClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->listener:Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mListData:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mListData:Ljava/util/List;

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

    .line 27
    check-cast p1, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;I)V
    .locals 4

    .line 90
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->access$000(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mListData:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mListData:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->getParams()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->access$200(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mListData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->access$700(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$1;-><init>(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;
    .locals 2

    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a0063

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    new-instance p2, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;-><init>(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mListData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mListData:Ljava/util/List;

    .line 49
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemParamsData(IF)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mListData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->setParams(F)V

    .line 74
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setItemParamsData(ILcom/jiabaida/little_elephant/entity/ResistanceItemBean;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mListData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$OnItemClickListener;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->listener:Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$OnItemClickListener;

    return-void
.end method
