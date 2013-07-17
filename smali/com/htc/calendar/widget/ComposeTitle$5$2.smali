.class Lcom/htc/calendar/widget/ComposeTitle$5$2;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/widget/ComposeTitle$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/calendar/widget/ComposeTitle$5;


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle$5;)V
    .locals 0
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$5$2;->this$1:Lcom/htc/calendar/widget/ComposeTitle$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 885
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$5$2;->this$1:Lcom/htc/calendar/widget/ComposeTitle$5;

    iget-object v0, v0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$5$2;->this$1:Lcom/htc/calendar/widget/ComposeTitle$5;

    iget-object v1, v1, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v1, v1, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v1, v1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$5$2;->this$1:Lcom/htc/calendar/widget/ComposeTitle$5;

    iget-object v2, v2, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v2, v2, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v2, v2, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->insertContact(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/htc/calendar/widget/ComposeTitle;->access$900(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    return-void
.end method
