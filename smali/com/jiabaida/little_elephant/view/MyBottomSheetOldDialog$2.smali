.class Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog$2;
.super Ljava/lang/Object;
.source "MyBottomSheetOldDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 129
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog$2;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog$2;->this$0:Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->dismiss()V

    return-void
.end method
