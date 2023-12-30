.class Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog$1;
.super Ljava/lang/Object;
.source "MyBottomSheetOldDialog.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter$BottomItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog$1;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCheck(Landroid/view/View;IZ)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog$1;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->access$000(Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;)Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog$1;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->access$000(Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;)Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;->onClickCheck(Landroid/view/View;IZ)V

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog$1;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->dismiss()V

    return-void
.end method
