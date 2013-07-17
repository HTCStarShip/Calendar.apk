.class Lcom/htc/calendar/widget/ComposeTitle$8;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1718
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$8;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$8;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->launchPeoplePicker()V
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$2000(Lcom/htc/calendar/widget/ComposeTitle;)V

    .line 1722
    return-void
.end method
