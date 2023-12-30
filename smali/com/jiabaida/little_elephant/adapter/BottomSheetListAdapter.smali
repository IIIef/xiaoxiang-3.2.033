.class public Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BottomSheetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;,
        Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private itemListener:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

.field private mContext:Landroid/content/Context;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->mListData:Ljava/util/List;

    .line 32
    iput-object p2, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;)Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->itemListener:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->mListData:Ljava/util/List;

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

    .line 25
    check-cast p1, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;I)V
    .locals 3

    .line 57
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;->access$000(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;->access$000(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->isItemSelect()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 59
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;->access$000(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$1;-><init>(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;
    .locals 2

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a005d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;-><init>(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setBottomItemListener(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->itemListener:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->mListData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->mListData:Ljava/util/List;

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->notifyDataSetChanged()V

    return-void
.end method
