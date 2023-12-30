.class public Lcom/jiabaida/little_elephant/adapter/ControlAdapter;
.super Landroid/widget/BaseAdapter;
.source "ControlAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private controlBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ControlBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ControlBean;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ControlAdapter;->activity:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Lcom/jiabaida/little_elephant/adapter/ControlAdapter;->controlBeans:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ControlAdapter;->controlBeans:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ControlAdapter;->controlBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 44
    iget-object p2, p0, Lcom/jiabaida/little_elephant/adapter/ControlAdapter;->activity:Landroid/app/Activity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a0025

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 45
    new-instance p3, Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;-><init>()V

    const v0, 0x7f08005a

    .line 46
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;->access$002(Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f080168

    .line 47
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p3, v0}, Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;->access$102(Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;

    .line 51
    invoke-static {p3}, Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;->access$000(Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ControlAdapter;->controlBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/ControlBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {p3}, Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ControlAdapter;->controlBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/ControlBean;->getRes()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2
.end method
