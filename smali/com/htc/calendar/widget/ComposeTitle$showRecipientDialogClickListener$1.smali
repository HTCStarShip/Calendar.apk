.class Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener$1;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener;

.field final synthetic val$target:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener;Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener$1;->this$0:Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener;

    iput-object p2, p0, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener$1;->val$target:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener$1;->val$target:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v0, v0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-wide v0, v0, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener$1;->val$target:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener$1;->val$target:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v1, v1, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->queryContactId(Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$200(Lcom/htc/calendar/widget/ComposeTitle;Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener$1;->val$target:Lcom/htc/calendar/widget/ComposeTitle;

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->showRecipientMenu()V
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$300(Lcom/htc/calendar/widget/ComposeTitle;)V

    .line 365
    return-void
.end method
