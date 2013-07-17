.class Lcom/htc/calendar/widget/ComposeTitle$2;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$2;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$2;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$2;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v1, v1, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->removeAddedContact(Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$400(Lcom/htc/calendar/widget/ComposeTitle;Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V

    .line 378
    return-void
.end method
