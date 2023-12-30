.class public Lcom/jiabaida/little_elephant/view/PublicFragmentAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "PublicFragmentAdapter.java"


# instance fields
.field private fragmetnmanager:Landroidx/fragment/app/FragmentManager;

.field private listfragment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/PublicFragmentAdapter;->listfragment:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/PublicFragmentAdapter;->fragmetnmanager:Landroidx/fragment/app/FragmentManager;

    .line 18
    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/PublicFragmentAdapter;->listfragment:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/PublicFragmentAdapter;->listfragment:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/PublicFragmentAdapter;->listfragment:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/PublicFragmentAdapter;->listfragment:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/PublicFragmentAdapter;->listfragment:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    :goto_0
    return-object p1
.end method
