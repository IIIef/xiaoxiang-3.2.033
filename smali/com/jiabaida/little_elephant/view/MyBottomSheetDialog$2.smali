.class Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$2;
.super Ljava/lang/Object;
.source "MyBottomSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 126
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$2;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$2;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->dismiss()V

    return-void
.end method
