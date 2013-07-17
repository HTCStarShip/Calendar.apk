.class Lcom/htc/calendar/widget/ComposeTitle$4;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/widget/ComposeTitle;->showRecipientMenu()V
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
    .line 770
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$4;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$4;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->doShowRecipientMenu()V
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$600(Lcom/htc/calendar/widget/ComposeTitle;)V

    .line 773
    return-void
.end method
