.class Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$1;
.super Ljava/lang/Object;
.source "ParamsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

    iput p2, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 67
    iget-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->access$200(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;)Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->access$200(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;)Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->access$300(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;

    invoke-interface {p1, v0, v1}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$OnItemClickListener;->onClick(ILcom/jiabaida/little_elephant/entity/ParamsItemBean;)V

    :cond_0
    return-void
.end method
