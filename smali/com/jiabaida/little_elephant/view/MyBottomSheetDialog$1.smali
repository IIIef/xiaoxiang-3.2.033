.class Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$1;
.super Ljava/lang/Object;
.source "MyBottomSheetDialog.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$1;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCheck(Landroid/view/View;IZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    :goto_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$1;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->access$000(Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$1;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->access$000(Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->setItemSelect(Z)V

    goto :goto_1

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$1;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->access$000(Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {v2, v0}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->setItemSelect(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$1;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->access$100(Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;)Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$1;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->access$100(Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;)Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;->onClickCheck(Landroid/view/View;IZ)V

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$1;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->dismiss()V

    return-void
.end method
