.class Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$1;
.super Ljava/lang/Object;
.source "ResistanceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$AdapterViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

.field final synthetic val$holder:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$AdapterViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$AdapterViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$1;->val$holder:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$AdapterViewHolder;

    iput p3, p0, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 96
    iget-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;->access$300(Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;)Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$1;->val$holder:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$AdapterViewHolder;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$AdapterViewHolder;->access$400(Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$AdapterViewHolder;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;->access$500(Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;->access$500(Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d016c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;->access$300(Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;)Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$1;->val$holder:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$AdapterViewHolder;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$AdapterViewHolder;->access$400(Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$AdapterViewHolder;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;->access$600(Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;

    invoke-interface {p1, v0, v1, v2}, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$OnItemClickListener;->onButtonClick(ILjava/lang/String;Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;)V

    :cond_1
    :goto_0
    return-void
.end method
