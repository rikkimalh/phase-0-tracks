grades = [75, 80, 85, 90, 95, 100]

p grades.bsearch {|grades| grades > 50}
sort


def fib(x)
    return  x if x <= 1 
    fib(x- 1) + fib(x - 2)
end 

puts fib(10)



def insertion_sort(array)
    final = [array[0]]
    array.delete_at(0)

    for i in array
        final_index = 0
        while final_index < final.length
            if i <= final[final_index]
                final.insert(final_index,i)
                break
            elsif final_index == final.length-1
                final.insert(final_index+1,i)
                break
            end
            final_index+=1
        end
    end

    final
end
array = [100, 75, 85, 90, 93, 60]
puts insertion_sort(array)


#It helps to break it down line by line to figure out what is happening and what is to be expected. 
#Once I am able to define each line, I can piece and put it all together to make sense of it! 
#Visualizations definitely help, and lots of googling contribute to my understanding.
#The algorithm is a bit overwhelming as it has many moving parts in it. With that said, I found 
#myself to be very curious going through it and figuring out what it does
#It helps to stay positive in learning as it is definitely tough to understand this, and just viewing it 
#makes me impatient in learning and that leads to a negative educational impact.

#Sorting Method
#Grades are final for all students and need to be organized for the student for parent teacher meetings.
#Grades are to be assigned in descending order, so that
#Highest grades are presented first. 

array = [100, 75, 85, 90, 93, 60]

p array.sort! {|array, grades| grades <=> array}