export default function(){
  this.transition(
    this.fromRoute('listings.index'),
    this.toRoute('listings.show'),
    this.use('toLeft'),
    this.reverse('toRight')
  );
}
