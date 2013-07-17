.class Lcom/htc/calendar/EditResponseHelper$1;
.super Ljava/lang/Object;
.source "EditResponseHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditResponseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditResponseHelper;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EditResponseHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/calendar/EditResponseHelper$1;->this$0:Lcom/htc/calendar/EditResponseHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/htc/calendar/EditResponseHelper$1;->this$0:Lcom/htc/calendar/EditResponseHelper;

    #setter for: Lcom/htc/calendar/EditResponseHelper;->mWhichEvents:I
    invoke-static {v1, p2}, Lcom/htc/calendar/EditResponseHelper;->access$002(Lcom/htc/calendar/EditResponseHelper;I)I

    .line 65
    iget-object v1, p0, Lcom/htc/calendar/EditResponseHelper$1;->this$0:Lcom/htc/calendar/EditResponseHelper;

    #getter for: Lcom/htc/calendar/EditResponseHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/htc/calendar/EditResponseHelper;->access$100(Lcom/htc/calendar/EditResponseHelper;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 66
    .local v0, ok:Landroid/widget/Button;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 67
    return-void
.end method
