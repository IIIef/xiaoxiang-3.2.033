.class Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$1;
.super Ljava/lang/Object;
.source "ParamsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->initDataList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

.field final synthetic val$listItemDataNew:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$1;->val$listItemDataNew:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;)Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->access$100(Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initDataList()222+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$1;->val$listItemDataNew:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "----frm:"

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;)Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$1;->val$listItemDataNew:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->setNewData(Ljava/util/List;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDataList()+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$1;->val$listItemDataNew:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
