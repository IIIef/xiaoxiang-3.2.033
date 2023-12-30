.class public Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TemperatureLeftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/TemperatureBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/TemperatureBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;->mListData:Ljava/util/List;

    .line 32
    iput-object p2, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;->mListData:Ljava/util/List;

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

    .line 21
    check-cast p1, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;I)V
    .locals 4

    .line 57
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;->access$000(Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;->mListData:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->getTemperature()F

    move-result p2

    .line 60
    sget-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->isChinese:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "\u2103"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41100000    # 9.0f

    mul-float p2, p2, v0

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x42000000    # 32.0f

    add-float/2addr p2, v0

    float-to-double v0, p2

    const/4 p2, 0x2

    .line 64
    invoke-static {v0, v1, p2}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u00b0F"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;
    .locals 2

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a0061

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;-><init>(Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/TemperatureBean;",
            ">;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;->mListData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;->mListData:Ljava/util/List;

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;->notifyDataSetChanged()V

    return-void
.end method
